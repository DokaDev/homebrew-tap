class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.1/datarig-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "35ba189443bcdcdd63da34ec7556eebe293db724affd502cd3ccdc7dc809f628"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.1/datarig-v0.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "a818b9af0bb491ceb12b8b8494a1313b5f49075287c7428ad5299776e6c6d4b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.1/datarig-v0.24.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b90e817f59aa1aff8ab9bde8e72a4e9de2a586b50b63c8dc19809a8bc8ee90a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.1/datarig-v0.24.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1165217929c568c31870fb5b7edf629cf7f9fa25642ade68fc792e02228d11a3"
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
