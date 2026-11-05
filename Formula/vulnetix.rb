class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnetix VDB"
  homepage "https://github.com/Vulnetix/cli"
  version "4.23.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "f26b638f38cfbcd6fe2c22c1b73e3afd7f04e409bdc5a2ed160b62fd87d13674"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "fd72dbeb0d241d962fa255c68c7ac4ecb65f213b9ab69cb45ce8a1e5f827b6ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "a0a72017e914a9a1e0b6337ecab943b6aed76cbfd18ab2d1c3eadea705eda731"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "f9a389a25dc5f7d00a92accdf2ccbdf798ba22b5c5e4e502589cb28b27613191"
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
