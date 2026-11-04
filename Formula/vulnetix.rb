class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnetix VDB"
  homepage "https://github.com/Vulnetix/cli"
  version "4.19.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "f1e05cbe85c67f706fae5150427c27b902a896518257e664ba5ca097ce791e06"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "92189f80b0f58384535690ffb7ba1d4bf34b5d19afc3067f55de21c2032d268d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "84f0da502c2d83210e89e13d5d333f3a2bc660e246a2cf34dd739a8951466306"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "4e87c480f0e8f891e445f2d80c585f835048db22c4d8ed61d1c0bf4b0df4b293"
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
