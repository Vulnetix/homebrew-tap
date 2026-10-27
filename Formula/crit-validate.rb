class CritValidate < Formula
  desc "Validate CVEListv5 records with embedded CRIT data against the CRIT specification"
  homepage "https://github.com/Vulnetix/ietf-crit-spec"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-darwin-arm64"
      sha256 "85039622765baee211154105038d16148c63ea15cdec8a95a900f95915459c58"
    end
    on_intel do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-darwin-amd64"
      sha256 "6af651bcb247825ae2463398030b0af8a9e7458df97aa5f8feedadd12ba9e902"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-linux-arm64"
      sha256 "ac7f60bb065dfc38118a896e592e722f477c2537c119c4db0d2d732499b297e6"
    end
    on_intel do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-linux-amd64"
      sha256 "b578357d9d787ec9841fec71633523732ad203da48daf75c4775904fea88717f"
    end
  end

  def install
    binary = Dir["crit-validate*"].first
    bin.install binary => "crit-validate"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/crit-validate --help 2>&1", 0)
  end
end
