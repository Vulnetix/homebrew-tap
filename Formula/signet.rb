class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.48.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-arm64"
      sha256 "454f88fc67922e3d1cde459a5bbf2764c3c39ae4627ee81d4fd3640973cf2ba0"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-amd64"
      sha256 "9fe4c715997ca893d9017c940c50995bab4231e61e7330d8070d6efd19b7da07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-arm64"
      sha256 "f05f23ec577ada36540fb89852e1d80393314698d537a194e010a025465fec10"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-amd64"
      sha256 "feb58d3727111a74caa486ca770abc0ca4ff714bf91d6ff81e732f329a41f5a5"
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