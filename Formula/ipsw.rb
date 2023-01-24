# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.260"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on "git-delta" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.260/ipsw_3.1.260_macOS_arm64_extras.tar.gz"
      sha256 "7d4bdddb887dd98ec19d83c37aca916b22405d459ead419770f753494abf012b"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.260/ipsw_3.1.260_macOS_x86_64_extras.tar.gz"
      sha256 "00abc7ed32823186b1ee4ef8f14ab8f30c177297f5030865c4d7ad7ace66a5aa"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  conflicts_with "ipsw-frida"

  test do
    system "#{bin}/ipsw --version"
  end
end
