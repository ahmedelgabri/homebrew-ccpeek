class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  version "1.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-arm64.tar.gz"
      sha256 "f280e4cb64f1fc41548ce2a9a4eb68cfa6a6426a3096591ce32c47a10edd6fa9"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-amd64.tar.gz"
      sha256 "5fe1e9d5ea8f44fc04cbff4e010faf8753d0f82e7bf89fabc56b9eb606351614"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-arm64.tar.gz"
      sha256 "70c1f389b93ffebacd52a8394bd21bb69d8b6b5dfab4cbfc7c8f38fe09ada30b"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-amd64.tar.gz"
      sha256 "efd11919adb702895336b31774b03d09e7d3df7ed9eca53e9b25068c9d3bddc9"
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
