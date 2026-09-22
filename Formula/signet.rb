class Signet < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/signet"
  version "0.46.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-arm64"
      sha256 "900e777d9b6d43e7bbe6ea437a7f32fc4e67337d7e1f9f8e7203eeb1d418e553"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-darwin-amd64"
      sha256 "32668a476031ff7543668bbbcdf9141895e4e5e5a18561364e7e6b95d2f1bb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-arm64"
      sha256 "5051bc71c22a904cac56a9e3a55aa54365a6167f457da6ad9d902ddd9f208f31"
    end
    on_intel do
      url "https://github.com/Vulnetix/signet/releases/download/v#{version}/signet-bert-guardrails-linux-amd64"
      sha256 "9940c720d57ac28a7be4214e6e87ff425235d145f4263d5891e5bf69c7c0b9c1"
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