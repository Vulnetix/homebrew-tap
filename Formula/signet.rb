class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.38.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "b3f62686cc28f8cc3985b5cd787198e1a3d3110a638946dd7fdf0b33fbb34d4b"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "8e4dcbd6bb74dd3364cf7d2dd4923f6a2332a8f49b74bb1ee54b8fbcd3791180"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "1326a1eeceb1047dc822a8898a8c5869cddc3c16c63774196773f90125d35ff2"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "afbd9cd8e207688e1343643a090adc3eeae1fc4dde9088f74e6526a020c09fc6"
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