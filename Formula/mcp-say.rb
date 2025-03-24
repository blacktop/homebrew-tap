# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class McpSay < Formula
  desc "mcp-say"
  homepage "https://github.com/blacktop/mcp-say"
  version "0.1.6"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/mcp-say/releases/download/v0.1.6/mcp-say_0.1.6_macOS_x86_64.tar.gz"
    sha256 "28842c2f6b8ad13486d5b4324be49358d22285c9eb57f4be2252ec983ea7a092"

    def install
      bin.install "mcp-say"
      bash_completion.install "completions/_bash" => "mcp-say"
      zsh_completion.install "completions/_zsh" => "_mcp-say"
      fish_completion.install "completions/_fish" => "mcp-say.fish"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/blacktop/mcp-say/releases/download/v0.1.6/mcp-say_0.1.6_macOS_arm64.tar.gz"
    sha256 "67523f0090982bf9756d1917f89c3c35ea9bb3e8cf4174ef61ca92cdf0fce8e4"

    def install
      bin.install "mcp-say"
      bash_completion.install "completions/_bash" => "mcp-say"
      zsh_completion.install "completions/_zsh" => "_mcp-say"
      fish_completion.install "completions/_fish" => "mcp-say.fish"
    end
  end

  test do
    system "#{bin}/mcp-say --help"
  end
end
