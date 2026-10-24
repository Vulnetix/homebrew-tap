class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/belai"
  version "0.163.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "408eb2e5d911849c01d0c1eaefb37d8beee4bac19a5c4ea56f801aa1482552c4"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "eaf44ca297608cc128b97fa6574d8b542e9f534ba40734180f4eef4e51ee6ea5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "d2f6b0829b6215cc841d6831a6e9fff74bddc579b4bad3e83afb6f716b41d6f7"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "74acf08d24a16e6e0a4a6fa5dfa8ba9baa5ed678372a157b5ed821873f758c49"
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