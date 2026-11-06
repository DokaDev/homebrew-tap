class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.15/slakio-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "17433e9d66deab905f10c10e5c739a641346ccc163ad6655d1cc599a73b91a3f"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.15/slakio-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "80c4b9d9da265e8c60d45783b63f7ef9eb9c187b55e8fdfddeaca4ca3072310a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.15/slakio-v0.0.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8773b43c4acbea282d2b8231d7b6c01c20a80b60da20d1f480186dc37c5bc2ee"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.15/slakio-v0.0.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e10e364bd9a084e1632aa68c781abc34e1f83015179ceb57b9a2957b6f4546cc"
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
