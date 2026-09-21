class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.43.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "60e57fd53a3dea43cfc06b4f0c364786fb5f5e91839adef7c446ccc6a6084dc1"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "b5416db1a92b052b6b80c3e5b9072f4337426293029a1958eb862f4406e2986d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "e5e7c216a9f00f8b230c20c0ecbc6d3f483efeb1686a28f1ea4abe48c6d1218c"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "94b0c8f1cb617ec31d18f75405c61cd689c45ea4c3f35c47a4b7c0e1c2223b5a"
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