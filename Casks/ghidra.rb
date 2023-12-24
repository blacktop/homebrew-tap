cask "ghidra" do
  version "11.0.0"
  sha256 "d004b9c49b0ccec12ebd080129b1d365cea61f92a3ad42479a10d6320a370870"

  url "https://github.com/blacktop/ghidra-apple-silicon/releases/download/v11.0/Ghidra_11.0.zip"
  name "Ghidra.app (Apple Silicon)"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://github.com/blacktop/ghidra-apple-silicon"

  app "Ghidra.app"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "17+"
  end
end
