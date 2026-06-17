# This file is auto-generated. DO NOT EDIT.
cask "spot-defy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin"

  version "0.1.4"
  sha256 arm:   "6c847c7a9328bcaad929c0e9ee51380ee823bc344364e1979d45a4a26e5b3cfc",
         intel: "7a93fd160a298ea5865ba257958e7ce5819883f0a751ba1675781b9e696eb98d"

  url "https://github.com/blacktop/spot-defy/releases/download/v#{version}/spot-defy_#{version}_#{os}_#{arch}.tar.gz"
  name "spot-defy"
  desc "Privacy-first Spotify player TUI with embedded streaming"
  homepage "https://github.com/blacktop/spot-defy"

  binary "spot-defy"

  on_macos do
    postflight do
      Dir.glob("#{staged_path}/**/spot-defy").each do |f|
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", f]
      end
    end
  end

  caveats do
    <<~EOS
      spot-defy requires a Spotify Premium account.
      Run spot-defy auth login once before launching the TUI.
    EOS
  end
end
