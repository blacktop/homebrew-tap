# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.520"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_intel do
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.520/ipsw_3.1.520_macOS_x86_64_frida.tar.gz"
    sha256 "e653189a5ce20523e24623c0f1badb82f166cc6530182ce370914496c43e2af8"

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
  on_arm do
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.520/ipsw_3.1.520_macOS_arm64_frida.tar.gz"
    sha256 "63eccf2bcfa5a6c027d3041f90824612b4f25d775e87d75abb0cd745263381b5"

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

  conflicts_with "ipsw"

  test do
    system "#{bin}/ipsw --version"
  end
end
