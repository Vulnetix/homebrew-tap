class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.45.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-arm64"
      sha256 "de42d71fb04f2c706afa21a35b549cbd46e220f68c4978613f9585f51ff1ac57"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-amd64"
      sha256 "03e3a690fde4b4f937c5f2bd989ac67b347440b0627a171cec964eac2e09bd04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-arm64"
      sha256 "24c65ab944c3ce9158310369e5ba3986dcb547d7dedac78f188e2d3e3ac55959"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-amd64"
      sha256 "60009c01b4d06e5fc7b746251af9f1a8d66afb066515b1c506a21e4501518820"
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