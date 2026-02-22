class Ccpeak < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeak"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-arm64.tar.gz"
      sha256 "7e580521fe88f3b33e69b64589ed5d2d2accc9fdbe23276e385b3bac256cddee"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-darwin-amd64.tar.gz"
      sha256 "49d42bcb7ea53337ef9cb584713f8ec88dbbbab970ce43a4c59df881a5fbf461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-arm64.tar.gz"
      sha256 "6f8b36ecda83f38fab89e08e1ced50922a77ab357038bc0ee021e2951f19b234"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeak/releases/download/v#{version}/ccpeak-#{version}-linux-amd64.tar.gz"
      sha256 "53c0db43697e06d93aabd9b489626442f58d866756c215b232fd11851a75f013"
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
