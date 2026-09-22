class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.44.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "b1a24ec303695cc81c5716ea0c8bce0b8b9e31ab3aeb77b668ed6e45c0dff653"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "7fa04c258f3fecdf1b3a29e70127fe3abc70c8508f448efc2d571a1ae486a0fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "f2562e58ec3b2bc98fcf9b065722d0f1363aa42744d1b2409bf0fd55a3001633"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "b6c990650214dc328096672350e85042cd56d979cddf5a5dfe6b3dcecb2547ea"
    end
  end

  def install
    binary = Dir["signet*"].first
    bin.install binary => "signet"
  end

  test do
    refute_empty shell_output("#{bin}/signet --version 2>&1", 0)
  end
end