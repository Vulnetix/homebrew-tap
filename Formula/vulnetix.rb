class Vulnetix < Formula
  desc "Vulnetix Unified Command Line Utility for the Vulnerability Database"
  homepage "https://github.com/Vulnetix/cli"
  version "3.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-arm64"
      sha256 "c48eff5cb0c2b65f4c5796e2deaac10703ecefe5dc963a57b886e979e18225fe"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-darwin-amd64"
      sha256 "c00207d41af6e09e90b9795383e3665822fcb4d290927dba72c38bf048038d95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-arm64"
      sha256 "6a5b3072e60c4fff9a1a7d3caa5385a2cd6b64eac28dd3607d7afa2abd0be3a6"
    end
    on_intel do
      url "https://github.com/Vulnetix/cli/releases/download/v#{version}/vulnetix-linux-amd64"
      sha256 "3aacc4c8e25eda6441dbb20adab40da92ed98966ec4b633a55cb03efe15dc39f"
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
