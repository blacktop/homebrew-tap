cask "dyld-tools" do
  version "26.1"
  sha256 "13dd1d91eebc44c945388bad6e93cb017921d5e4ebe78c90acf0a2db123c4e8f"

  url "https://github.com/blacktop/darwin-dyld-build/releases/download/v26.1/dyld-tools-universal.tar.gz"
  name "dyld-tools"
  desc "Apple dyld tools built for macOS"
  homepage "https://github.com/blacktop/darwin-dyld-build"

  binary "dyld_info"
  binary "dyld_shared_cache_util"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/dyld_info"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/dyld_shared_cache_util"]
  end
end
