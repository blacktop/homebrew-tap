# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "APFS parser written in pure Go"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.26"

  on_macos do
    url "https://github.com/blacktop/go-apfs/releases/download/v1.0.26/go-apfs_1.0.26_macOS_universal.tar.gz"
    sha256 "a35358aa48b8c04f42aa43011823a4c5b1d26ae951b9cd06668e65cf048f5590"

    def install
      bin.install "apfs"
      bash_completion.install "completions/_bash" => "apfs"
      zsh_completion.install "completions/_zsh" => "_apfs"
      fish_completion.install "completions/_fish" => "apfs.fish"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.26/go-apfs_1.0.26_linux_x86_64.tar.gz"
        sha256 "0b935406167de7900a82a95c098a4d2e30f781fde85eb39c66476f6c34b07239"

        def install
          bin.install "apfs"
          bash_completion.install "completions/_bash" => "apfs"
          zsh_completion.install "completions/_zsh" => "_apfs"
          fish_completion.install "completions/_fish" => "apfs.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.26/go-apfs_1.0.26_linux_arm64.tar.gz"
        sha256 "21ad806fa28b34d869fb6b67879fd15b7a9d03532cc000227d46c274e8dd6df7"

        def install
          bin.install "apfs"
          bash_completion.install "completions/_bash" => "apfs"
          zsh_completion.install "completions/_zsh" => "_apfs"
          fish_completion.install "completions/_fish" => "apfs.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/apfs --version"
  end
end
