class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "9ba93ddcc22b8eb7944a6d92a685120abc3a250ce96185f8109c141b23ad834d"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "6176269fc26757b3aa5ffbe0b5a0c801b9b19eb9cfae082c754f329acadee2a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "103be88444d7da28609ec533adca7ffeecfd536ed3e22c3f8a67e7b44a9d1da8"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "de11d62c2b6eed8b0c4cc892ed93a822e3a0f3ade8d3eb916f05b3d3fb5da56b"
    end
  end

  def install
    binary = Dir["signet*"].first
    bin.install binary => "signet"
  end

  test do
    refute_empty shell_output("#{bin}/signet --version 2>&1", 0)
  end
end