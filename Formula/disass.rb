# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disass < Formula
  desc "MachO ARMv9-a Disassembler"
  homepage "https://github.com/blacktop/arm64-cgo"
  version "1.0.57"

  depends_on "bat" => :optional
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/arm64-cgo/releases/download/v1.0.57/disass_1.0.57_macOS_universal.tar.gz"
    sha256 "967fe2000a41ab1f634c556983214f1f1a6dd36b2e3a24a3a8a3747f0e302182"

    def install
      bin.install "disass"
      bash_completion.install "completions/_bash" => "disass"
      zsh_completion.install "completions/_zsh" => "_disass"
      fish_completion.install "completions/_fish" => "disass.fish"
    end
  end

  test do
    system "#{bin}/disass --version"
  end
end
