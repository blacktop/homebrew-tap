# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.177"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.177/ipsw_3.1.177_macOS_arm64_extras.tar.gz"
      sha256 "5c459f59c2a01834cfc2bde6d147595ff3fbbfba39928a71dc7c0f7458129092"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.177/ipsw_3.1.177_macOS_x86_64_extras.tar.gz"
      sha256 "1d105d0d9bb383529e5fe8a64588dc6d26c6defb7b23b14fc3d3465b055d281b"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
