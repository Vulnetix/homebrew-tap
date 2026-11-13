class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnetix VDB"
  homepage "https://github.com/Vulnetix/cli"
  version "4.24.8"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "64e6c0aef4163c29c7de0c1634d279ef3764aa5c9120008bebe4b5ba01f8bcd0"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "66f70e8af2a92eb3d03517fa83c02a9e7b979ead9a8ce4303e65ee956f2a3e29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "1bbfa8b1cb136cedc6ebff1864594070cdcc08039cacd609f45ae9e512e632d6"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "1db37dce99add08c8cefae89ad41c4775ae218efa5137b530fbe9b41d305c051"
    end
  end

  def install
    binary = Dir["vulnetix*"].first
    bin.install binary => "vulnetix"
  end

  test do
    assert_match "Vulnetix CLI", shell_output("#{bin}/vulnetix version 2>&1", 0)
  end
end
