class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "3.148.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "dcd2d6eb4c5b8c8d9d005e376d1fed4e4b9a34bb2aec8a38196f324b13cd545e"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "3eb94efc7c3ab7245767d9a769e30549de1bbbaf43bda7a6d53887a2e1ce939a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "78986035d767f26a52068bfc23b4f63daa78ab4fec9225e4f6bdbfea2475ed84"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "9cf87d9a2943f769ab238abf2ec92e9997fab0d31feef3c3d8cea0bf59ff8ace"
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
