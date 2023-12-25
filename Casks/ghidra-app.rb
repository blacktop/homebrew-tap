cask "ghidra-app" do
  version "11.0.0"
  sha256 "774aad276e8a5ebd262e9b1de6a4f544e69257c921a3e686773c475c0491efd6"

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
