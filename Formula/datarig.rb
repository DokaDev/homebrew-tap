class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.1/datarig-v0.41.1-aarch64-apple-darwin.tar.gz"
      sha256 "bbc0b4304f928095103ad18da248ad72988330321131bfdaff27fb45aeba116a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.1/datarig-v0.41.1-x86_64-apple-darwin.tar.gz"
      sha256 "66c8881248b0672a9ec4d05255859e6f82e48a7176542d9be85f6e4a6a7cb95d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.1/datarig-v0.41.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14fc14e73951051cb53ba2eb690176a88b3e9c7cb8f9c123047b5397e3e8cd11"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.1/datarig-v0.41.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f3bf8e53266881dee15def7e9046f7ece5c7d65915c40a997315a7dcf76259b"
    end
  end

  def install
    bin.install "datarig"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html", "licenses"
  end

  test do
    assert_equal "datarig #{version}", shell_output("#{bin}/datarig --version").strip
  end
end
