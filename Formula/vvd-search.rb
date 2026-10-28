class VvdSearch < Formula
  desc "Interactive TUI for exploring the Vulnetix Vulnerability Database"
  homepage "https://github.com/Vulnetix/vvd-search"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-darwin-arm64"
      sha256 "970b760d57569c28bc17360ea1e04aa6fc2e1fd0d5dd6a2d796798b56cf82277"
    end
    on_intel do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-darwin-amd64"
      sha256 "f4b2e1d38c5dc75cf4a85156e45438b9d0d7ba94ce93b69b212225a0ec4d786b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-linux-arm64"
      sha256 "bb22c6ef61d73cf9355f17777e23364647a0946631b9f27cc7a4e99fceb34218"
    end
    on_intel do
      url "https://github.com/Vulnetix/vvd-search/releases/download/v#{version}/vvd-search-linux-amd64"
      sha256 "738cab9461bc70854b769cb1affefc77c4f3f70c9b190254647b0585d3c33ce8"
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
