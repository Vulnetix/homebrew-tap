class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.49.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-arm64"
      sha256 "5479d6910c5d82d7ea8169371da6217866a3e6a201390a0bbf09091c07a586b4"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-amd64"
      sha256 "4a27356f4a6bbc1e758c00cd58e1a4274b3a67bb7f1bc90125bf6998201ebcba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-arm64"
      sha256 "d9fa9a76165e49d45346117c6f124d15342d5b798201af09dc9274fdb428ca14"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-amd64"
      sha256 "ba4fce3b58c7bb38bed93cb7985b1455452bc83975c723f0e8ab91501ca84ca0"
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