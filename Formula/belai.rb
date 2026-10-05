class Belai < Formula
  desc "Role-managed, injection-safe LLM coding harness"
  homepage "https://github.com/Vulnetix/belai"
  version "0.122.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-arm64"
      sha256 "77233014a52d4ff0803c5bde63df02919ed1d23d5ed3ef9548e5837a0763ab82"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-darwin-amd64"
      sha256 "fd7b992fcebf963002bcba4d03126a2e727255515519994eb6c0e7584f19e947"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-arm64"
      sha256 "a3c07011617589e6e43932e1d1402f3dd0b4250af4861fa65c35253d7ac0922a"
    end
    on_intel do
      url "https://github.com/Vulnetix/belai/releases/download/v#{version}/belai-bert-guardrails-linux-amd64"
      sha256 "dbf166b94516474dbcb07b586e517dcf73477174e9065328640f49d91b6c9f83"
    end
  end

  def install
    binary = Dir["belai*"].first
    bin.install binary => "belai"
  end

  test do
    refute_empty shell_output("#{bin}/belai --version 2>&1", 0)
  end
end