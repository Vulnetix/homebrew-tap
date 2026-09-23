class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.48.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-arm64"
      sha256 "b9722bdce8a0aa4a286352d6a6d4683024312360effe477e2d650654a0023c62"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-amd64"
      sha256 "fabc353443a64337a42a2cc0c78a2bd526f4d39d5dfbc30952e84a859341dc24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-arm64"
      sha256 "53185354526795cc01ecab57cd4f030dd4f3f4a48ce9a3c3f0a820ac0109396e"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-amd64"
      sha256 "48d784e3f328b6b47b459cf3bdbd9eb70cc3c084094de62d63b1dd109ac3aebd"
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