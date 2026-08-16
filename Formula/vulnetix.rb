class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "3.92.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "623aaef24b730648a1c934787bda8995ff7942e854e0d2aa89b6d9a39265d2b6"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "7bf16d56da1e1366fa54dc5e087f6bd12a9e498b12f0f03eaa646ff19b8e5197"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "2c24d48eb399016530fd512e8fec24e6591c10c1a97b5470820ffc9579562603"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "9d1e392077df4e044ce62b4cf89b5cf8e6b73ac05bd64fc1913ba5422d09da4b"
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
