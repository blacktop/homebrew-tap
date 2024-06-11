# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.494"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    on_intel do
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.494/ipswd_3.1.494_macOS_x86_64.tar.gz"
      sha256 "1fcf24cc1dc805da4be098e35224e3942bdd0c3e5d3f401af35d1a424567f7b1"

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
    on_arm do
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.494/ipswd_3.1.494_macOS_arm64.tar.gz"
      sha256 "3f2cb88a77e4f4c93f26211ada0b802e03b4b7183bbb19f3b38bf43109d77f60"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.494/ipswd_3.1.494_linux_x86_64.tar.gz"
        sha256 "003716a8df1784b28685886f1197f4aab7bcd6650f502d49eeffaefbd530303a"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.494/ipswd_3.1.494_linux_arm64.tar.gz"
        sha256 "86f4815174cfdd4addc66d9818939e84c9c0c6f368568d874f0c8ef208605d9f"

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
