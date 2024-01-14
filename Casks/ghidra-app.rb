cask "ghidra-app" do
  version "11.0.0"
  sha256 "8efc27e8bd2cb5efd19ca37c25cbee997d94cabb748b9693efeb55576440e53d"

  url "https://github.com/blacktop/ghidra-app/releases/download/v11.0/Ghidra_11.0.zip",
      verified: "github.com/blacktop/ghidra-app/"
  name "Ghidra.app"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://github.com/blacktop/ghidra-app"

  app "Ghidra.app"

  postflight do
    system_command "/usr/bin/xattr",
                  args:         [
                    "-d",
                    "com.apple.quarantine",
                    "#{appdir}/Ghidra.app",
                  ]
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "17+"
  end
end
