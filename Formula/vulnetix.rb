class Vulnetix < Formula
  desc "Scan dependencies, code, secrets, IaC and containers, and query the Vulnetix VDB"
  homepage "https://github.com/Vulnetix/cli"
  version "4.22.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "cbe4d74b9a8ff60f372c5c0255683093e65b5fdfb4fe5b0d066576443f0e6daa"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "85fb11c1d78d968140cef134dc328d3f3079d23bdd3120a00d66af6b20bd48c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "2aeda63fdeacce1d7ceb6740fa7f9285143d0bbce10e7600c79b6d6c25612381"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "7e5d6bb6c5b0d6e6ddc6a0cbfe35d575afa80f41f95fb77f57cfb145fe657157"
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
