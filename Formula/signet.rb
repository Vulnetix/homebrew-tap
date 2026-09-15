class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "fa5090155d542e155bab5701b84390b61fb8cf0fcd92ee6b738c66253b911077"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "07b214ee9de18a9f2be6191afb9aee892b72599513e8c8f3142e6901e00be002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "70802ae903b2f9e3c66ffdec17b06af2f6a0363cccf10c1ad4bee0515df5900f"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "59d5585ac17e19293c06529da12f2bbf58c82024c6a183fbcd836ec626832ab8"
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