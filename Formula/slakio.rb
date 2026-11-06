class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.17/slakio-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "024809fbcd557809d194881e6ffd2839d9e4119d37c6fcc550efffd50e8a3400"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.17/slakio-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "1a21b3f8f6f845c68f3c3e174dee1410236c4212fda5f27cea54c5b5078b9226"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.17/slakio-v0.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "429b4932d517d1805b642c561bf01b48c5a1bc0321aa612f0d13335cebb08f5d"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.17/slakio-v0.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a988acfc7a4c584bdeb5b99031184de0c22ef2255ce1cbf5b632b2aa0e619d7"
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
