cask "ghidra" do
  version "11.0.0"
  sha256 "d9ea6ef6a6ec0b783411293a69f68890007fc1d568cb2d2724307004818e7923"

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
