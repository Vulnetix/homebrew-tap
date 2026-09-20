class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.39.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "f3b1915e676ec53717effe752d6979d1263a92a012f1d4312fe4242ea4f32721"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "80da915e0be265e0546f9c4925fcbfbb0daed78b8c2ebff11912223721363294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "c4a41bc22ad1e73b42be506ef4bea3c840247869080c5f3ba80f48b7ed0c48a3"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "6ced7312cc5c26c4bbdc48f0e1ea058fbb035af6496da44586becc06f376305d"
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