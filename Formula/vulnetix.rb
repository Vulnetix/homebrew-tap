class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "319e6d8c07a9ef51f611e14d878950affa0417c66c3a98fc6f685899406933ba"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "c1bf6fb4a26b1bea8b863b6020faf035f1d9cfa513230bebc1dc4fd88157193f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "38dabc2a34f9e1927d41c93fa2cba5579c6ad1a2fd280b5006eb62f61a4b06ca"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "f89cc0e1dcc0d6e55ec05081844d6e43110ec28b1e9a848f41c6a047ac6ca3bd"
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
