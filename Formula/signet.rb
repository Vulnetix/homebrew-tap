class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.39.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "87fbecb0f4152fe3ad6ca73b222f114a7a17c1ff997850e432d26f6e8108f71c"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "c75ec7b412837af8ec092cf65a6e125786e682f1455d7519850cb4f31617da1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "dab0c68d7c16ab8b0bdbae4989eb1b97309b3d2fdae658aa826d4019b58ea934"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "f9de88b6b7e7024bd5bed0f798295b34ce5e03cfcc7de14d9dd1dedb0a5eb22b"
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