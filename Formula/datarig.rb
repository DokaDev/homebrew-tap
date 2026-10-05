class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.7.0/datarig-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "434d96effeaaafc62e268ed0c6494bb8341d525992d417698bf6b48516f3d05a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.7.0/datarig-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc31cc17cc90284f843875746cc4663f4184c291ac5b858d8d9746c69f554775"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.7.0/datarig-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "133ff292d9bbbdb6ea831b74fbeef52b6e5615c6411d3713f210ccc824986f16"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.7.0/datarig-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ce2c6f564b1a6ee6c742b59ceae30ed518432fe3aa75c6fc36ec39b8f319522"
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
