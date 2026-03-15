class VvdSearch < Formula
  desc "Interactive TUI for exploring the Vulnetix Vulnerability Database"
  homepage "https://github.com/Vulnetix/vvd-search"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-darwin-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["vvd-search*"].first
    bin.install binary => "vvd-search"
  end

  test do
    assert_match "vvd-search", shell_output("#{bin}/vvd-search --version 2>&1", 0)
  end
end
