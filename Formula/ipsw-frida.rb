# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.323"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.323/ipsw_3.1.323_macOS_arm64_frida.tar.gz"
      sha256 "3b1c464397197371fbc1081736d25a44df60ae1582bb4c77fbc988b48280efdd"

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
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.323/ipsw_3.1.323_macOS_x86_64_frida.tar.gz"
      sha256 "2e5e64dc4378dbd5d27d697c66626c14b2093feec20677e89c0fa5bf45c330f2"

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
