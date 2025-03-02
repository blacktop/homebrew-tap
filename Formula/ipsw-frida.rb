# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.579"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.579/ipsw_3.1.579_macOS_x86_64_frida.tar.gz"
    sha256 "b5fd8f2370618fddc6ae1cf68e1beef842d3f60d82f86177bb93a85e6a7a94c7"

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
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.579/ipsw_3.1.579_macOS_arm64_frida.tar.gz"
    sha256 "32938c209c6df5c790cba9ec787aee77967bb2d1d9119f43ab5640bd79d82675"

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
    system "#{bin}/ipsw version"
  end
end
