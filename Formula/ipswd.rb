# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.352"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.352/ipswd_3.1.352_macOS_x86_64.tar.gz"
      sha256 "f26133bc36a80361361852246c271f89bb371c250ed00914f712d7e0c10908f6"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.352/ipswd_3.1.352_macOS_arm64.tar.gz"
      sha256 "efd00bcdeda4184c68e818c64615693092693e8ce02186c6eb536a6d3d6e99e6"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.352/ipswd_3.1.352_linux_x86_64.tar.gz"
      sha256 "88b60013d519bd22ef8aee921668b50dab9cb358f8aeade06e5e966145a6ccb5"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.352/ipswd_3.1.352_linux_arm64.tar.gz"
      sha256 "f78a0c68cc6cbc9a86bc294c88d52ee9afde4fe242e19789c13e0a181ba79fef"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
  end

  def caveats
    <<~EOS
      By default, ipswd runs on localhost (127.0.0.1), port 3993.
      If you would like to change these settings, you will have to
      edit the configuration file:
        #{etc}/ipsw/config.yml

      To restart ipswd after an upgrade or config change:
        brew services restart ipswd
      Or, if you don't want/need a background service you can just run:
        /opt/homebrew/opt/ipswd/bin/ipswd start

      To see ipswd logs:
        tail -f /opt/homebrew/var/log/ipswd.log

      To remove ipswd:
        brew services stop ipswd
        brew uninstall ipswd
    EOS
  end

  service do
    run [opt_bin/"ipswd", "start", "--config", etc/"ipsw/config.yml"]
    environment_variables IPSW_IN_HOMEBREW: 1
    keep_alive true
    log_path var/"log/ipswd.log"
    error_log_path var/"log/ipswd.err.log"
    sockets "tcp://127.0.0.1:3993"
  end

  test do
    system "#{bin}/ipswd --version"
  end
end
