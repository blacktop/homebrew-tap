# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.347"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on "git-delta" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.347/ipsw_3.1.347_macOS_arm64_extras.tar.gz"
      sha256 "3380e855feb2a2327a32fd444927fd7bf5e0c992ed67d2cadd14a9a7e8bac03a"

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
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.347/ipsw_3.1.347_macOS_x86_64_extras.tar.gz"
      sha256 "add2585bf8c3d39e0b4279d5ef53ea6aadbedc451429ba656feaa4fbb7e716e5"

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

  conflicts_with "ipsw-frida"

  test do
    system "#{bin}/ipsw --version"
  end
end
