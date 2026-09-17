class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.26.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "db2f639f708bf2c609ba1fd727041f1c44e9aa82ceddbe3654610cf3aafc8e26"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "0f6b8b5a4ff1b43e8aeca1feb6b10b5d735510cfc5e0db682eec4135067c7059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "40fc564dcd8e5da3ec57c4a90ad60d05b95da73eee940f3475bb2e36340ec73f"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "0d2f47ff815e45e3b7d7954e191164920c60033b6a75c52440ec63184b4dd0dd"
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