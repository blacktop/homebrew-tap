# This file is auto-generated. DO NOT EDIT.
cask "spot-defy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin"

  version "0.1.2"
  sha256 arm:   "571de779c4e474d8dabcf35de5f964bcd5a89c4a491f0ceb6de4aae9f109cdca",
         intel: "ad272f7691bf0b6d28c867bd10bb621b00e68195a798252ce98591f391f32161"

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
