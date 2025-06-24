cask "ghidra-app" do
  version "11.4"
  sha256 "8f813341eeaa72e6a47d7395ebc9989c4313e6e6d8c398e934019e0bd3de53d8"

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
