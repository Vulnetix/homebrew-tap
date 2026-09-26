class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/belai"
  version "0.51.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "5319d358bf2cc17196dfb76cbfe832fe24cd3bf9e6a1c0babce6e2e565a7e6da"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "94f1b665988da0957b94d0b6d1aa8edb2844e8f0af7fd9aa365281661970fdde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "bc99e9dae05de8b6d8a40234271bf6d3b4b5b4c38179281b819cbca277c76680"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "6b602e184312b7c3866f570ff4dea6ffd61201c150401d5baa6d3daf7dbdb713"
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