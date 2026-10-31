cask "ghidra-app" do
  version "12.2,0"
  sha256 "14f0e7ad924b337f81a74dfd720575be0d12b4a5dc52670317dd50aef4d94aa3"

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
