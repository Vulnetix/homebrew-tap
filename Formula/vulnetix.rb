class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnetix VDB"
  homepage "https://github.com/Vulnetix/cli"
  version "4.24.36"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "1dbd39d43afe36b432bf94f987835904711f068c7c6938958cc7fd45e7b7b1b1"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "3c96c77e4fbf991c5d50f523b641d42c1ce0657c66899a251825b5b6e9bbe589"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "5eb6d09c4d69539b2c89735f15318a76e0e64ec63ad049c5bebc75032989457b"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "1b7e3615eb802cfe8cb3f272da76e50be22a870af2d382b309126e8bf492a01c"
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
