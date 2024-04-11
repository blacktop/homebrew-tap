cask "ghidra-app" do
  version "11.0.3"
  sha256 "3cab947eebc4794a5e4b149fe9de06531b1e84769d9fe111c674ce700e1c3a65"

  url "https://github.com/blacktop/ghidra-app/releases/download/v#{version}/Ghidra_#{version}.zip"
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
    depends_on_java "17+"
  end
end
