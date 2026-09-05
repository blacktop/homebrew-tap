cask "ghidra-app" do
  version "12.1.3,0"
  sha256 "9b24b66e191107c53784a4fb83b3d1235435107ec323e42884f063e31194e425"

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
