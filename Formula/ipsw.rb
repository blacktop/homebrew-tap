# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.2/ipsw_3.1.2_macOS_arm64.tar.gz"
      sha256 "0a506850a1e4dbc38ffbcab16773624e47153bc9bc0b86d9408992a4d2a163c3"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.2/ipsw_3.1.2_macOS_x86_64.tar.gz"
      sha256 "7fbb4d00f5d6123ad32010789fcbe9c409ce4a9a41aee5602b067c85161fef9a"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.2/ipsw_3.1.2_macOS_universal.tar.gz"
    sha256 "2c95f10a9eb1e25b6a766c60689a9f558d8dfe27024f49a297092ac4b95c3afe"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.2/ipsw_3.1.2_linux_arm64.tar.gz"
      sha256 "15166f472b9cab236a1004c5095c28e7ac2fca17d9c4070fe720bcea5b27718e"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.2/ipsw_3.1.2_linux_x86_64.tar.gz"
      sha256 "6792ce5d52802cc618dde1c6158fd379e1fea8c9805ffe3dafd6c8f9f642127d"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
