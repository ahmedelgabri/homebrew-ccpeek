class Ccpeak < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeak"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-arm64.tar.gz"
      sha256 "cbf1034b4d02c0c1beaf6d078a7605a0668649fada9dc1adca3bf33901dffa3d"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-amd64.tar.gz"
      sha256 "996ffc0b8377398b7cd75f7d87dd0027fda1d95edaf38b3b1824529b0f63e217"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-arm64.tar.gz"
      sha256 "86924adbb3bed247b09d638d2a8cb4ce7110ae872fe036baf58f00db54cee5b1"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-amd64.tar.gz"
      sha256 "6d95aa13ec8248bc8e2fe9223b35ee91c04d21fcf74b339cc2aad0779223e6cc"
    end
  end

  def install
    bin.install "ccpeak"
    bash_completion.install "completions/ccpeak.bash" => "ccpeak"
    zsh_completion.install "completions/_ccpeak"
    fish_completion.install "completions/ccpeak.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccpeak --version")
  end
end
