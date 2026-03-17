class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  version "1.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-arm64.tar.gz"
      sha256 "597e0874146f2db0dacd633d8a0cdbffee70a6ed147b3632f2ffefde02723804"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-amd64.tar.gz"
      sha256 "8c64a4310d3b38eb6187460aaf940cb0bc23b56656f05075ad4794ead86763ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-arm64.tar.gz"
      sha256 "b5d3f97a4c6aa3c12f166839d01aa7cc20b2fe8fd11decb008f5f74d5c62deca"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-amd64.tar.gz"
      sha256 "d1e55ea8e05bfd37fb14ea9179f223fb2fa80074d85d62e8affe857e93e5b914"
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
