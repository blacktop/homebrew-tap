# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.592"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "git-delta" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.592/ipsw_3.1.592_macOS_x86_64_extras.tar.gz"
    sha256 "0c36c6c4959054b538885667eb4f1ea98916266ad759e2751e6f2df0a19781bf"

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
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.592/ipsw_3.1.592_macOS_arm64_extras.tar.gz"
    sha256 "919405b8043f2e5757128235d818e01b7a21467475e1e8b5945257407c07e932"

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
