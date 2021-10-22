# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "APFS parser written in pure Go"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.10"
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/go-apfs/releases/download/v1.0.10/apfs_1.0.10_macOS_universal.tar.gz"
    sha256 "07c269ec5c0003bccc3a1251c5e1b6c3a4249b5fa297fddb5029d72c51daf55e"

    def install
      bin.install "apfs"
      bash_completion.install "completions/_bash" => "apfs"
      zsh_completion.install "completions/_zsh" => "_apfs"
      fish_completion.install "completions/_fish" => "apfs.fish"
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/apfs --version"
  end
end
