cask "ghidra-app" do
  version "12.1,0"
  sha256 "19f98a3451411c474f6018e623d435e0f01937903b3692b47b81704855c91203"

  url "https://github.com/blacktop/ghidra-app/releases/download/v#{version.before_comma}/Ghidra_#{version.before_comma}.zip"
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
