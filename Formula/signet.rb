class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.42.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "d2b6158f2e6bfaf241631959901d6f9cd3a0cc6bbe66aaea89d35f1acd4a73f7"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "cc0f25ce2b9bbdf059c003d3477fa84c201123b562e38838862f541a942612a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "d374f99d0f86b7ecf3ba3cebe6919d5d9a4c58f4133f77d7340cbd4585bfc123"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "995fbc47b9c56f766cdcbe9040918ad5a930d40f1d1658989e0d2b262aa554cd"
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