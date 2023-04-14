# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.317"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.317/ipsw_3.1.317_macOS_arm64_frida.tar.gz"
      sha256 "ae0459e9b9d2ea0cf2d778c7446ab0d8aa872ab3a0df96c6920cc762eb78a883"

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
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.317/ipsw_3.1.317_macOS_x86_64_frida.tar.gz"
      sha256 "ec8f60f7599ac13426712de8c4955978894406e78b89fc87d79e1b35473e30d4"

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

  conflicts_with "ipsw"

  test do
    system "#{bin}/ipsw --version"
  end
end
