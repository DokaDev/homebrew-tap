class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.2/datarig-v0.13.2-aarch64-apple-darwin.tar.gz"
      sha256 "62aed57f3dee22fcd55e8e49bc6160f7f8396912848ed4d64d0281b87ec34986"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.2/datarig-v0.13.2-x86_64-apple-darwin.tar.gz"
      sha256 "a5db63019dfca962ac2287d0324f794bf64decdfc57e382956978c37164b3fec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.2/datarig-v0.13.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7709fbfa88452ab105583a1446d4d156215fa1f0badfc294d34f9f70ba17ac83"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.2/datarig-v0.13.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "300c6fe2745c7f85ef7710de3f997ae7ff7d06c046189843b360e3b5aa830d32"
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
