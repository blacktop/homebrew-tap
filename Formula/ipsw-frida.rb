# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.435"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.435/ipsw_3.1.435_macOS_x86_64_frida.tar.gz"
      sha256 "31a4301522c6fa3892795dc560151748dfd27ece1ecb41fb7ffbc4d66b9f7e60"

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
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.435/ipsw_3.1.435_macOS_arm64_frida.tar.gz"
      sha256 "3e36d63934eeb3e0f73b6f5a69c8ec9930d01e1b8d4bed33c811cbf129424567"

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
