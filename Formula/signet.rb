class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "eeabff49829df54839f17a5c002cb6221572a78706c0ae3c70863600ccb46c52"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "7593c11ad2b69074afcce2c9bc1a9fc6222660cebe26e1f57660549bd07a22f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "3aa8ce631ab1ee810d76e7029ee56d7c74a4b45504f87e1505d1d1bff6a9d970"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "df0775dd0a83d1e32b62966a932bb5d77ab301a2602e2bce9a13d1dc025046f1"
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