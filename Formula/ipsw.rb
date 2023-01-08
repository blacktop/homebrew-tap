# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.243"
  license "MIT"

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional
  depends_on "git-delta" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.243/ipsw_macOS_arm64_extras.tar.gz"
      sha256 "1973d15e7812b48b69736b9f70960d7f3e3e96cfde8dc014a7e624dff063b500"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.243/ipsw_macOS_x86_64_extras.tar.gz"
      sha256 "ab626e469a9e96b1abde9995b329edd979873acce52f7b1c816cafaf37b858d0"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  conflicts_with "ipsw-frida"

  test do
    system "#{bin}/ipsw --version"
  end
end
