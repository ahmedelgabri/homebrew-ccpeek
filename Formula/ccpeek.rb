class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  version "1.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-arm64.tar.gz"
      sha256 "9edc7868c3ef43e51f594214c47555dbc016ad4b62de08d2a8284128cce258d0"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-amd64.tar.gz"
      sha256 "05aca1f40305f45c010006e86789055d445c37c54ab98438be071891eec5dd1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-arm64.tar.gz"
      sha256 "33a6fdd2f9830c77be3ad7a8404a63a01c0dec339b411a3b86eab7c771af463a"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-amd64.tar.gz"
      sha256 "5126689575b205481f635a0888ac64663e83a309563eae8d10a63e47288255bb"
    end
  end

  def install
    bin.install "ccpeek"
    bash_completion.install "completions/ccpeek.bash" => "ccpeek"
    zsh_completion.install "completions/_ccpeek"
    fish_completion.install "completions/ccpeek.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccpeek --version")
  end
end
