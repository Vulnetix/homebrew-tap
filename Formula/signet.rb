class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.39.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "1f389e1ebb146580d539328b9f8ef72ab33b2b9bd2d9f139c558befde5e6e943"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "01f5ef5f697e8eb5afecf60eef83b866e7c413e3c3c240f4fbe1ab7c951e3795"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "64a730a37b1779a3ba2303e09380e7e9cc247b7fa8dcb7d5203b7172538b73c7"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "bc54edfd2e188c79cddeab4041434287733bbdd2de2faddb64927971fa17ee34"
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