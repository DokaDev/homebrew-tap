class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.19/slakio-v0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "2a147e057b6f51c3b645fdaa21e87ba7d1040d4c46493b8102ded159b0af9f1d"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.19/slakio-v0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "aa75c4f2cd8874463ed5be5c1927cf6ca4eb6a49eeb6b7164fd19b3e08c765ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.19/slakio-v0.0.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0165bacb1cd639c91684a6ecb11eedd189d986fa582d3c5c1f53f55da2e615c2"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.19/slakio-v0.0.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83e4d5a80f248eb33a5eb35ffb4aa92965604efa6e43cf8af0a1d91908450b95"
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
