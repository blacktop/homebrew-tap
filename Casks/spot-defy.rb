# This file is auto-generated. DO NOT EDIT.
cask "spot-defy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin"

  version "0.1.5"
  sha256 arm:   "71916b2d4241723975624dffb17b08c67134c3eb94858de7cb0a77cc9d2e958d",
         intel: "73eaf2bb47321b804f9ec35ca0dc90cc6991b5516a2e6f9ed31f6244a456111f"

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
