# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "APFS parser written in pure Go"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.16"
  depends_on :macos

  on_macos do
    url "https://github.com/blacktop/go-apfs/releases/download/v1.0.16/apfs_1.0.16_macOS_universal.tar.gz"
    sha256 "fc08c3fb44660cab13ab542ac955c929f659c5a2d1f35d11664c1988b927d026"

    def install
      bin.install "apfs"
      bash_completion.install "completions/_bash" => "apfs"
      zsh_completion.install "completions/_zsh" => "_apfs"
      fish_completion.install "completions/_fish" => "apfs.fish"
    end
  end

  test do
    system "#{bin}/apfs --version"
  end
end
