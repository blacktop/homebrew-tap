# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "iOS/macOS Research Swiss Army Knife"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.81"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.81/ipsw_3.1.81_macOS_arm64.tar.gz"
      sha256 "38b3ac57e870146b1ce7ae852487a6c631312b85dcdd995cf78646f1fb46b73a"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install "manpages/ipsw.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.81/ipsw_3.1.81_macOS_x86_64.tar.gz"
      sha256 "4c96be7141b32d4aa344d1d57d205a8ce33712daeb95a9bf640275140a561650"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
        man1.install "manpages/ipsw.1.gz"
      end
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
