class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.1/datarig-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "a52381b73646bfff8c83006c9b3c48b52519aa2514e12ecd0b6102b54a82cc9c"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.1/datarig-v0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e8c5c024beb754bc919dfe30bc42eaf31371a25967aa445184036f6e4349589"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.1/datarig-v0.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f40c82081abb843ccd3e8e2eac80c7ab01a76821ba83c203ca2d1148796c5e6"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.1/datarig-v0.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3afcdcbbe634fd3c1d3ea8411bde7ade6e2be31735bd49c2e33e3870f1b07181"
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
