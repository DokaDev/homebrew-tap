class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.1/datarig-v0.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "ae4409103176ba62f9b1672e4c61977c4eed5c02c41d6abe2597dc3f95832615"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.1/datarig-v0.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "91b375531e3e2a9c35222a6a6bf001ff1db428d8eee1bfc89f729a4190dae242"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.1/datarig-v0.32.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdfbad5ef9a8d4730a3a0c32581796d5c278951cdb942971f1505ecea406353a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.1/datarig-v0.32.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b60feb7f8eb2a36d5490646d28f8181f28b9e8aa7bbe934f1b7f629a520489ba"
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
