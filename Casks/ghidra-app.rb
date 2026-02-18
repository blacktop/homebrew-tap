cask "ghidra-app" do
  version "12.0.3,1"
  sha256 "87c301f312a30d434f4a07f2789d148247854fef1c71dea51906e9f6f5e395a8"

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
