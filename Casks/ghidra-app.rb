cask "ghidra-app" do
  version "11.0.1"
  sha256 "31cba3e084097a0f10aa4ddce40d42c243570754320df43c75cee87db2eeca26"

  url "https://github.com/blacktop/ghidra-app/releases/download/v11.0.1/Ghidra_11.0.1.zip",
      verified: "github.com/blacktop/ghidra-app/"
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
