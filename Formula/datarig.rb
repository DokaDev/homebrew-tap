class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.1/datarig-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "bc382308c7a533d23a9e02dfe0698c48abaa95abce08a1b6acf27c9cf732e999"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.1/datarig-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ed8b6402ef1b25cf3a439fac477ff119f4f99bb9e70093c11ccfa20abeeb052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.1/datarig-v0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "214c687331f0fade32ce739c0083d96ef613a6ad012c6adea268afdb145861b2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.1/datarig-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56df6aa3536f98946dd5e5c95b467a8f554d25105f379a3f889d6ea7db6a7b8a"
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
