class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.32.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "0f7aa7427e9863253979d4503d36bd9ee75570d2538cd147d826a93fdb7aff14"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "ba16b4c7c24257e1c29ca2c046b053c2fdbdc668fa5a229545a2a9210a9115a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "5d71066f7786128321f79f11f24819bc35b43cce7848bda2f8d277d4e716ee6d"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "20c95831c2dd39e19b279732221db6dc2e004570afe9ce91fd48e3aa665c9503"
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