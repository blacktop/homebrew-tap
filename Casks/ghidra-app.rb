cask "ghidra-app" do
  version "11.0.0"
  sha256 "74d1c5db9b38d1d627e1d20769ac429810bbbd7ed02d33e40657f31b3620aad7"

  url "https://github.com/blacktop/ghidra-apple-silicon/releases/download/v11.0/Ghidra_11.0.zip",
      verified: "github.com/blacktop/ghidra-apple-silicon/"
  name "Ghidra.app (Apple Silicon)"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://github.com/blacktop/ghidra-apple-silicon"

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
