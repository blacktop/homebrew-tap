# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disass < Formula
  desc "MachO ARMv9-a Disassembler"
  homepage "https://github.com/blacktop/arm64-cgo"
  version "1.0.58"

  depends_on "bat" => :optional
  depends_on :macos

  url "https://github.com/blacktop/arm64-cgo/releases/download/v1.0.58/disass_1.0.58_darwin_all.tar.gz"
  sha256 "646fc2f9b49f48237eb9288ecc4aa5192bc30f619f872dd2155322b7a482e6e9"

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
