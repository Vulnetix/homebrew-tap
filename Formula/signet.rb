class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.44.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "2cc901039b70dff1a8b4b46a7fd25b254d93e5106d5f4de4b9c00888a1b0cebb"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "f37b0387d4e30643cf7f275fb162fc44e8a4e2720ca55a204a1719f7f9ecda08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "4b957cc762fb1f59dc3f7779ff9069a5aa6c968762f10b8c6968a2ae8707ceb3"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "7f356b736ae0dd2f07319f078f02b64801a7d80f23c97ce90479b63c9dc751df"
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