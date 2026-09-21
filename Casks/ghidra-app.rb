cask "ghidra-app" do
  version "12.1.4,0"
  sha256 "c47115618f11930c97c86d6e0a79ddb9073ac5b1ab977398e5fb481c2cbc413f"

  url "https://github.com/blacktop/ghidra-app/releases/download/v#{version.before_comma}/Ghidra_#{version.before_comma}.zip"
  name "Ghidra.app"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://github.com/blacktop/ghidra-app"

  app "Ghidra.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Ghidra.app"]
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "21+"
  end
end
