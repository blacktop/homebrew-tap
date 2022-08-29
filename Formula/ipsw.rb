# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.169"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.169/ipsw_3.1.169_macOS_arm64_extras.tar.gz"
      sha256 "099e0eee573ef68aca3f833f5ca6b6a02a7192a816e6cfce66c446f6db30e20c"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.169/ipsw_3.1.169_macOS_x86_64_extras.tar.gz"
      sha256 "194ec66304b87f8d3c97832a99484f5aac96afadcd9311e04ab8a139a968bc8d"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install Dir["manpages/*"]
      end
    end
  end

  depends_on "bat" => :optional
  depends_on "libusb" => :optional
  depends_on "unicorn" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
