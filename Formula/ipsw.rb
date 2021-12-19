# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.32/ipsw_3.1.32_macOS_arm64.tar.gz"
      sha256 "b2db413827f3ad3b94842595ebbde964e61e39f63e0def9c01e3b0227581e4d9"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.32/ipsw_3.1.32_macOS_x86_64.tar.gz"
      sha256 "a6bb57fd7e7f1b9ce1ee62bcb66564adfff118f5f5e7c92b5b01d9037a6e58c9"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.32/ipsw_3.1.32_macOS_universal.tar.gz"
    sha256 "ad4aa4556b4295e8302ae818fa178d8e9a3b704b6c30be59a052d8a311667709"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.32/ipsw_3.1.32_linux_arm64.tar.gz"
      sha256 "c90be9002a81e1321488c5624c36cefc70ad80c043e929b987e56c3fefc0a894"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.32/ipsw_3.1.32_linux_x86_64.tar.gz"
      sha256 "00e0cd344a2c5274cfea44558b162a527c27e56f712d0a4d0fbe9dbfd43b09ad"

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
