class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.24/slakio-v0.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "d7cc99b8ffe5a9916691774efbda753066c48d8c40841303c605f3367f0c11cc"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.24/slakio-v0.0.24-x86_64-apple-darwin.tar.gz"
      sha256 "fd5625a3590751aef9b2cdaf7e60e118bfb7f451a89f1af0d589348afcbd5121"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.24/slakio-v0.0.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e7dc775dfbe7448ba8eea48c9847cb8722c237a927f46cea97c50b38a85fe47"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.24/slakio-v0.0.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00b4ed1c24b816e55e6c3afbe2cbbc31848525fe1169d2586a22a01a0e309300"
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
