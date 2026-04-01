class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
<<<<<<< HEAD
  version "1.16.0"
=======
  version "1.16.0"
>>>>>>> da6d138e8e31ff63fc87ffba4f3792ebf380b557
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
<<<<<<< HEAD
      sha256 "2bf638975532615c2c19dcec9b38186cd1bef676beae6e2df0d8df3d99890321"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "a4be95c83080a2399b5e7307e74d5580ad50742d3357d1b59dbe21046e191e20"
=======
      sha256 "6d9e47a9db2ccc05233cf474995d6ba9b8837f26bfc0970885796034eb909d93"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "a4be95c83080a2399b5e7307e74d5580ad50742d3357d1b59dbe21046e191e20"
>>>>>>> da6d138e8e31ff63fc87ffba4f3792ebf380b557
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
<<<<<<< HEAD
      sha256 "9f5611fef4d2b6220324dc908070403cb277702e980719dbe48c540722c1a4fa"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "a40d9b20ef24c2c05260048b34ae430898a541ae906f2427db86e8be6487f6fa"
=======
      sha256 "2eb07eb6ae3f0a3cfe6975944459b51a37ad3f20e98a8e3e921fa6fb3a158899"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "a40d9b20ef24c2c05260048b34ae430898a541ae906f2427db86e8be6487f6fa"
>>>>>>> da6d138e8e31ff63fc87ffba4f3792ebf380b557
    end
  end

  def install
    binary = Dir["vulnetix*"].first
    bin.install binary => "vulnetix"
  end

  test do
    assert_match "Vulnetix CLI", shell_output("#{bin}/vulnetix version 2>&1", 0)
  end
end
