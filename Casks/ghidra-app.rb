cask "ghidra-app" do
  version "11.2"
  sha256 "7c75142b54f126f33fc1779f8177dbbef72683be7c08ad3760c7de9280510fa2"

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
    depends_on_java "17+"
  end
end
