class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "3.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "3dcf4dad1c036d0b7012e9426d7e73be53dbe43b6dc4147375c57e40879d6dc9"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "4a878e93624edb513e9ad23a4e2d9efec7fd1a24e79180b5f403a7b035f3b0be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "73ca99cebf24267439c3b20e773516392567a25588a8b55956e360c6ed36d5ab"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "d3a0a1a77ee98cc6c110109579c06692a855c21d8051a2f7c61c28eef25ba709"
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
