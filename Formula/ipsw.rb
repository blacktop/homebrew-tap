# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.62"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.62/ipsw_macOS_arm64.tar.gz"
      sha256 "a439ed394f7b3faf2c048aa2e2e767494a3738797eed37268efce04b06aab4eb"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install "manpages/ipsw.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.62/ipsw_macOS_x86_64.tar.gz"
      sha256 "6447da1e755a90b6bcec1263fbfae70f8a8672b506b6cdaa9b1cb52da98d4ab8"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install "manpages/ipsw.1.gz"
      end
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
