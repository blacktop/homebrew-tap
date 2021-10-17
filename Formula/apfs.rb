# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "MachO ARMv9-a apfsembler"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.8"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/go-apfs/releases/download/v1.0.8/apfs_1.0.8_macOS_arm64.tar.gz"
      sha256 "6feae624a1ca0392ed6a0d4250a5c8bfd13477d96ff1edfb2ec4533ae57fd1f7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/go-apfs/releases/download/v1.0.8/apfs_1.0.8_macOS_x86_64.tar.gz"
      sha256 "aa70262c8b5ffb27a0440b702a4d1b3154da585f9bd8b6fb75e5e84f5b11ce64"
    end
  end

  depends_on "bat" => :optional

  def install
    bin.install "apfs"
    bash_completion.install "completions/_bash" => "apfs"
    zsh_completion.install "completions/_zsh" => "_apfs"
    fish_completion.install "completions/_fish" => "apfs.fish"
  end

  test do
    system "#{bin}/apfs --version"
  end
end
