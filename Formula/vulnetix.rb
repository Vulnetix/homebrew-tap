class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "3.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "a00d6e31e1e91ce38dc9e3859caa420e6ff2f3a79950c398cd7a83ae2c7f2de1"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "f5353c456f882643e06e8987321e1a20a0abd1c376d5869cd2249a2eba76acb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "e727dbe3b461f1fab3a0acaa5639ecdd2a5bc7e75bee802f47d1584bf85cb44f"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "70537365e6021fa86d7fe1a8cebfa9b238db08163d7d93cdffab320ebc8aa8d7"
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
