cask "ghidra-app" do
  version "12.0"
  sha256 "10dda0d2d53847a16c45d99fec84a27e4606dc49cc2487c08aaef6e0a16c853f"

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
