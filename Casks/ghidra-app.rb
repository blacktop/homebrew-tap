cask "ghidra-app" do
  version "11.3.1"
  sha256 "0ea6cb64e8a59d912bca15e8aa6e61fb855fdf40197ea098c93e8b0de7d57f6b"

  url "https://github.com/blacktop/ghidra-app/releases/download/v#{version}/Ghidra_#{version}.zip"
  name "Ghidra.app"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://github.com/blacktop/ghidra-app"

  app "Ghidra.app"

  postflight do
    system_command "/usr/bin/xattr",
                  args:         [
                    "-dr",
                    "com.apple.quarantine",
                    "#{appdir}/Ghidra.app",
                  ]
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "21+"
  end
end
