# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "APFS parser written in pure Go"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.23"

  on_macos do
    url "https://github.com/blacktop/go-apfs/releases/download/v1.0.23/go-apfs_1.0.23_macOS_universal.tar.gz"
    sha256 "083670bee692012f33aade2d9a5b532a40349fc5411a3993711e67bc4991a74d"

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
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.23/go-apfs_1.0.23_linux_x86_64.tar.gz"
        sha256 "680fbfe1c715480b23503e64b7ae777b36104e23698d42d340afd6445a138967"

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
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.23/go-apfs_1.0.23_linux_arm64.tar.gz"
        sha256 "143948be1a2df9748bc1ebda30ec38af75d491c5cfe047d937b11e55fb510361"

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
