# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IpswFrida < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.514"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on :macos

  on_intel do
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.514/ipsw_3.1.514_macOS_x86_64_frida.tar.gz"
    sha256 "4b725c738448778f60cd8f6c0579ff95fe0be3bd8d78d4c6fa3503218f33a627"

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
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.514/ipsw_3.1.514_macOS_arm64_frida.tar.gz"
    sha256 "ac9c7e61f75c9c743fe8fa72c938e6b300637d6c92ac7d74101c36b96ba4d84a"

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
