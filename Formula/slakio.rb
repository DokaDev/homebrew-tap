class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.21/slakio-v0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "8c2bf917507ce691809febf70614d393110ba7a7106e74e8f0b76336d89569c0"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.21/slakio-v0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "8b6f0476c4613db9012afb7cdedc0ce468fc1eed1d1d7676c151de1a6e7f974d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.21/slakio-v0.0.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ab7ac001eb6d2cdbbd36b451e6e36311af59f6dd6aed702f0e86af68de478b3"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.21/slakio-v0.0.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b81c41ce6e80199cc66e3fc836a4afe88f8b0bd8906eb3a7f9cb0816e15ef2eb"
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
