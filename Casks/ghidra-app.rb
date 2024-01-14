cask "ghidra-app" do
  version "11.0.0"
  sha256 "ff718995a81de5424560b7e9b312faae5e02416cf4d7f3445d2af61f89bbe80c"

  url "https://github.com/blacktop/ghidra-app/releases/download/v11.0/Ghidra_11.0.zip",
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
