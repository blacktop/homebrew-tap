# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disass < Formula
  desc "MachO ARMv9-a Disassembler"
  homepage "https://github.com/blacktop/arm64-cgo"
  version "1.0.39"
  bottle :unneeded
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/arm64-cgo/releases/download/v1.0.39/disass_1.0.39_macOS_universal.tar.gz"
    sha256 "afefc94d2bddbab7ea48fc49524cafa70b2c58e584dcba5b3b80cbe7d4bff199"
  end

  depends_on "bat" => :optional

  def install
    bin.install "disass"
    bash_completion.install "completions/_bash" => "disass"
    zsh_completion.install "completions/_zsh" => "_disass"
    fish_completion.install "completions/_fish" => "disass.fish"
  end

  test do
    system "#{bin}/disass --version"
  end
end
