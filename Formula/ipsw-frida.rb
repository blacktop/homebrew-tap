# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.341"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.341/ipsw_3.1.341_macOS_arm64_frida.tar.gz"
      sha256 "3ff9b9ba4b995e601035ec4fe6a543760e08a18f42893813955ecf1948572245"

      def install
        bin.install "ipsw"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipsw/_bash" => "ipsw"
        zsh_completion.install "completions/ipsw/_zsh" => "_ipsw"
        fish_completion.install "completions/ipsw/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.341/ipsw_3.1.341_macOS_x86_64_frida.tar.gz"
      sha256 "b657c13e6a843f85aeaae4b3830021c5e4ba2d2ca3fbeb176b297207b011a325"

      def install
        bin.install "ipsw"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipsw/_bash" => "ipsw"
        zsh_completion.install "completions/ipsw/_zsh" => "_ipsw"
        fish_completion.install "completions/ipsw/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  conflicts_with "ipsw"

  test do
    system "#{bin}/ipsw --version"
  end
end
