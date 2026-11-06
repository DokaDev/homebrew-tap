class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.16/slakio-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "c03771c55246d2373cbd9c8feffd78419f56ce4c2d7cdfd28fa0f8c21c9360b7"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.16/slakio-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "ee83eda664913be1c6c1e4ea8000feca1bc190c04c1ffcd6083b173fecaebc25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.16/slakio-v0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c1fe8e8873f90734befab249317998d2063aac02f21a8cb593333976fa84bce"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.16/slakio-v0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a61399059936415830a1889407d68ce0cacb6769d905e91b5dd3802142bc99d"
    end
  end

  def install
    bin.install "slakio"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html"
  end

  test do
    assert_equal "slakio #{version}", shell_output("#{bin}/slakio --version").strip
  end
end
