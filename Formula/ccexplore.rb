class Ccexplore < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccexplore"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccexplore/releases/download/v#{version}/ccexplore-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccexplore/releases/download/v#{version}/ccexplore-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccexplore/releases/download/v#{version}/ccexplore-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccexplore/releases/download/v#{version}/ccexplore-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "ccexplore"
    bash_completion.install "completions/ccexplore.bash" => "ccexplore"
    zsh_completion.install "completions/_ccexplore"
    fish_completion.install "completions/ccexplore.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccexplore --version")
  end
end
