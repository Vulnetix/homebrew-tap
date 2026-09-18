class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.34.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "6f23f3fbf20068e3c8bd8bf23b4960396e3b7272f26f2ab245617ae2e53bd1c3"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "23355d38dc07d89fecae1c2f2a87685dbc4d9a9282d4d720085bdeca65598ebd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "4e9cddcb9b1caf96e89cfdcbbfa6e770a4c61a7f5839315e4358b2e570249b4f"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "31f183e6a2e76ff6b1ddec1b23ea0af1f6538ebeb9fb44a7259703d33208e93a"
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