class VmProxy < Formula
  desc "VM Proxy Server - Allows hypervisors to be controlled from docker containers."
  homepage "https://github.com/blacktop/vm-proxy"
  url "https://github.com/blacktop/vm-proxy/releases/download/18.03.0-dev/vm-proxy_18.03.0-dev_macOS_amd64.tar.gz"
  version "18.03.0-dev"
  sha256 "f682791c3fc277a6ae2825efe79a02abb609315033e42379ccd4602160a6ca88"

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
