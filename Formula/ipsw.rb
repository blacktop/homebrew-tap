# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.317"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on "git-delta" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.317/ipsw_3.1.317_macOS_arm64_extras.tar.gz"
      sha256 "728e22310688984f5e8eae56ea13cf1ba318713abf1b198579a9757a721bb282"

      def install
        bin.install "ipsw"
        prefix.install "LICENSE", "README.md"
        prefix.install "config.example.yml" => "config.yml"
        bash_completion.install "completions/ipsw/_bash" => "ipsw"
        zsh_completion.install "completions/ipsw/_zsh" => "_ipsw"
        fish_completion.install "completions/ipsw/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.317/ipsw_3.1.317_macOS_x86_64_extras.tar.gz"
      sha256 "b2419ea17bc098c7eea454579587b9b9ed240954d58f161bd43d6b0ffbdd9905"

      def install
        bin.install "ipsw"
        prefix.install "LICENSE", "README.md"
        prefix.install "config.example.yml" => "config.yml"
        bash_completion.install "completions/ipsw/_bash" => "ipsw"
        zsh_completion.install "completions/ipsw/_zsh" => "_ipsw"
        fish_completion.install "completions/ipsw/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  conflicts_with "ipsw-frida"

  test do
    system "#{bin}/ipsw --version"
  end
end
