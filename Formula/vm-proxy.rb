class VmProxy < Formula
  desc "VM Proxy Server - Allows hypervisors to be controlled from docker containers."
  homepage "https://github.com/blacktop/vm-proxy"
  url "https://github.com/blacktop/vm-proxy/releases/download/18.03.1-dev/vm-proxy_18.03.1-dev_macOS_amd64.tar.gz"
  version "18.03.1-dev"
  sha256 "d08a29aed685f17265becc46dbec77c821b3836edde48f8387d3f930bcefa736"

  def install
    bin.install "vm-proxy"
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>Program</key>
    <string>#{bin}/vm-proxy</string>
    <key>WorkingDirectory</key>
    <string>#{HOMEBREW_PREFIX}</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/vm-proxy/vm-proxy.log</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/vm-proxy/vm-proxy.log</string>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>
...

    EOS
  end

  test do
    system "#{bin}/vm-proxy --version"
  end
end
