class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.25/slakio-v0.0.25-aarch64-apple-darwin.tar.gz"
      sha256 "a89c70fefa1aafa0a9bb8e6804bae13f33e4078bcedd743db68717265a52100b"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.25/slakio-v0.0.25-x86_64-apple-darwin.tar.gz"
      sha256 "93ce8bdddb5ab71ee60cbb64842c9c8a88c3bf210818190dbd938b6e1d9ba0c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.25/slakio-v0.0.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "405b8be24ceb01c0d315288245e43cd2f88ce5dd516567cf6128e9ae7bb4e192"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.25/slakio-v0.0.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc76182f998b2058c8441423cadd2bbc157f5474d623937eb3deae094a3c6bb0"
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
