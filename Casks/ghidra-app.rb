cask "ghidra-app" do
  version "12.0.4,0"
  sha256 "f82d989c86e02aeb5b8d8ba8384e10ec2b24cdb1cb75e515f24e945764869d4f"

  url "https://github.com/blacktop/ghidra-app/releases/download/v#{version.before_comma}/Ghidra_#{version.before_comma}.zip"
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
    depends_on_java "21+"
  end
end
