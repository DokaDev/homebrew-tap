class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.27.0/datarig-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "d83d9ede847f3a656a127387a1236be8b51977c1557835374a741bb81e1349d9"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.27.0/datarig-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "f6bea20c68829d6d747f502966962e8f3992f57e5a04ce04d9a732cc1a693279"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.27.0/datarig-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "038a41c8ed573b47498505c26b94e5b72be5b347ebc5c1d032cad84c1b7b93bf"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.27.0/datarig-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26c5c9d1c4ebd7a69146ff14345a4295866bfcc1872839a5140b7fedfbfbf275"
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
