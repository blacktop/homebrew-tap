# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apfs < Formula
  desc "APFS parser written in pure Go"
  homepage "https://github.com/blacktop/go-apfs"
  version "1.0.24"

  on_macos do
    url "https://github.com/blacktop/go-apfs/releases/download/v1.0.24/go-apfs_1.0.24_macOS_universal.tar.gz"
    sha256 "1876d86756b4bedf7f2a64226e6e9410523e341bdc5c0537acc49602c1de252c"

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
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.24/go-apfs_1.0.24_linux_x86_64.tar.gz"
        sha256 "f7f209287994b5331f391de2646f77589f9d589f17a40afc5deb26eb0d4a503b"

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
        url "https://github.com/blacktop/go-apfs/releases/download/v1.0.24/go-apfs_1.0.24_linux_arm64.tar.gz"
        sha256 "0387574159307ceff0e49cb7e6b2034b6f66e404c8d184ebaa458906fa330797"

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
