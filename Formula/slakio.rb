class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.1/slakio-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "de7bcd86547b87814264b82feebee0cc22a067c02e44ee5a99a62a5bf37fcd81"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.1/slakio-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "996786e098ff3fbf03639b15eb201797a99e8eeb71ebcd29389b67019e531dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.1/slakio-v0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2453184af11a090ff2754cc45109a0e2f01f7cd9d45fd65ac7326033c1034cc"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.1/slakio-v0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f17c1dacb8b1b272bccba17249c2d844bfaf8249c68575e05c7e310541d7b6eb"
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
