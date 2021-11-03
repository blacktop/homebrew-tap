# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.95"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.95/ipsw_3.0.95_macOS_arm64.tar.gz"
      sha256 "4f13545a627aa389ea638e50b28ec045caf26bbfa2aaa04ff620ea0551e029e3"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.95/ipsw_3.0.95_macOS_x86_64.tar.gz"
      sha256 "889fc3cd4a3c5c8700d1ab80d5b38666cabd0529a70ac117aaf2c3337e9ddb39"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.95/ipsw_3.0.95_macOS_universal.tar.gz"
    sha256 "fc873dafff76d5e06e1661d33214e4c3ca159fd75c017b4be96168681696cbc5"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.95/ipsw_3.0.95_linux_arm64.tar.gz"
      sha256 "287ee9ea09626daf2d0027a11a5dc1a0166cd5046aac06c222495800ae14cf3e"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.95/ipsw_3.0.95_linux_x86_64.tar.gz"
      sha256 "dc6bae8fa4aad57340288fe66ed8c994f32d7649b37af464817db630404ffc3d"

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
