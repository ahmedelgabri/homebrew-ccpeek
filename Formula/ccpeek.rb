class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-arm64.tar.gz"
      sha256 "b2ca90e520f753ec329ef7f69a5581fbf6baf9d948f484ca011ef40fef5b3278"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-amd64.tar.gz"
      sha256 "e289f0156c2342001594fb95c91d5a9f275c6c02ebdc4dc33de51f79af620a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-arm64.tar.gz"
      sha256 "3fe625f7252bf2ff4f1b91eb6f1a64f3361a608d8579d755b7078203971b93a3"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-amd64.tar.gz"
      sha256 "a6e332394e34ec0ae0c159e159f1b78816ca78090d422f2ffe0b2c3373186409"
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
