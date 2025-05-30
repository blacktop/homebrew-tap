# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.607"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "git-delta" => :optional
  depends_on "libheif"
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.607/ipsw_3.1.607_macOS_x86_64_extras.tar.gz"
    sha256 "0e3017bc24a2ecb4ad814fdd25233512f62617aea3a9903aa64ed60e86a8938b"

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
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.607/ipsw_3.1.607_macOS_arm64_extras.tar.gz"
    sha256 "7ec15e1517c5d49ca7ab7b8303efda0502becdca319bc84aad04266c6a9979b0"

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

  conflicts_with "ipsw-frida"

  test do
    system "#{bin}/ipsw version"
  end
end
