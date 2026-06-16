# This file is auto-generated. DO NOT EDIT.
cask "spot-defy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin"

  version "0.1.3"
  sha256 arm:   "5888720681765cc4515e7d48a6ad47fc2a22704fc578b439a68d7c571807c446",
         intel: "4e27570ca46827b593b92d025ddef934cf8cce2abe6b1239e052fd661559f5e6"

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
