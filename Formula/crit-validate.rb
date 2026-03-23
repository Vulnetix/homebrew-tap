class CritValidate < Formula
  desc "Validate CVEListv5 records with embedded CRIT data against the CRIT specification"
  homepage "https://github.com/Vulnetix/ietf-crit-spec"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-darwin-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Vulnetix/ietf-crit-spec/releases/download/v#{version}/crit-validate-linux-amd64"
      sha256 "PLACEHOLDER"
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
