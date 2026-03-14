class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-arm64.tar.gz"
      sha256 "8ba7f2abb7884a8df4aa07d22d8f4f7b3902c6e935eeacf1e038f0546e96ae32"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-darwin-amd64.tar.gz"
      sha256 "441d7a43fde6576c6d52a393463427e440bf7d490ad407ed0c604a33738348a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-arm64.tar.gz"
      sha256 "73498a7707a3966c0e7715c501c8b7aef0526df827dda856b1a6ed7cfe39f96f"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v#{version}/ccpeek-#{version}-linux-amd64.tar.gz"
      sha256 "3a3ab41942216ae7cc22ea75d3c1feca2b387657e5d482bb2723a0bd348d0360"
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
