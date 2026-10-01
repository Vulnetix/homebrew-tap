class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/belai"
  version "0.97.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "52cd900bb152c72a5304353dd92f5e825e396d5cf5155baee8039815700ea35a"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "319dee584c3c03ca6f139a60f1e0ddc803b73c23ab45c46c346997430bb27d00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "c2daa36122ff5900e019706e82f94e2e0a018a846f61284811286e1bc1aa04fe"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "274c5ab00262aabc2fcac2e3a9f2bdbb8f5ddcc6557694d8792a74f6652e5a65"
    end
  end

  def install
    binary = Dir["belai*"].first
    bin.install binary => "belai"
  end

  test do
    refute_empty shell_output("#{bin}/belai --version 2>&1", 0)
  end
end