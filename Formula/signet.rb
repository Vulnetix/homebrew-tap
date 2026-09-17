class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.27.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "39cc3bf761d90d0b626d70a629bae59da1aef2b06865ad0145ebce6d6edfd223"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "deff4e5759046f7ef6a168d58b09f0bd609f1f4cfabc2b1f0e77f8b445ce5e3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "5b2d8500dcec4fe9d9055ff669a5d8d4c86f9a09e24a19f7afcb8f4eb9463355"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "0819e3493715608132855d7e034aa51534a835a4e5808a2b5b71638c5dd20b30"
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