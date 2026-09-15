class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-arm64"
      sha256 "fc4617cd49466df04af0dae8dab8043b12d93e8230bcd9cda5860ef9cde85f26"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-darwin-amd64"
      sha256 "3e578c61ea71c64a45e43d3584c45d76a6161378b23c3ace7e8cc26e1c50855f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-arm64"
      sha256 "4950bd2a4b2cf8ea14b0dbeb5c3e32387dac24d78f9cdce48faa0fabe2b7bdab"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-linux-amd64"
      sha256 "e833be75a52cfb26923cf9663f7f1bcf287a4863abcfc3b3b901169a7c92e6e7"
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