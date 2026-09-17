class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.23.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "449c7a551b80b6c6b630e39c351c346858e04cfb7a71e6e3a06ee86f725d4477"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "e152d2b8efe61e0d53f54431a969ca9d23018e5496533576f9f14117f5b1a2e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "0b8991f7c7e7c0cffc8ae4f77d86643b9f2c0fd6775baa5a0de915f23a791da8"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "e64ddaaf70943e1c96e1da32feb263d43ab5b11713a6ad4c0184df6aedbb5bb4"
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