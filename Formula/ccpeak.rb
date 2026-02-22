class Ccpeak < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeak"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-arm64.tar.gz"
      sha256 "e6adbbbeb9c798b6123c75c9e93bb3ee8cf3f720e77fd0d029692046f3f18b58"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-amd64.tar.gz"
      sha256 "4d483a2d9dbf317c899d03aebdc1356a03d24378349d1ade41c1aabde4e694eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-arm64.tar.gz"
      sha256 "441364d6ed2081ec7fe30c3a843fe23f9c1573cc616fbb1b565d4ec08237386e"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-amd64.tar.gz"
      sha256 "d1953488790bd34398141f0b97115539592c9e76d4d527d42cad54381fbbd0ef"
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
