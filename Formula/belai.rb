class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/belai"
  version "0.154.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "a5c287d1df6006b5fb174c55baa1e03c65ebd67cc8268150279e6319b0b8c277"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "44c842bcd1c34eaa345a08e54a56c6083e5a7997aa58038e2ff64b0ebd498b46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "5e185bebd60cd001d25746a5c0e15d07c738c3ebf92a7cf6e2f4bded87833288"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "2f9fef030847db3a63c22c8013b8618b04e5906977f72a276cf601fc1534cd09"
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