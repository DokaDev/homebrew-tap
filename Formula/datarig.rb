class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.8.0/datarig-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "24a0ebfa1bb0f180eb4fd526bf2a21d3fd7bdbfd52c8101e2e1c74094762d1fc"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.8.0/datarig-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "7ba000a9742172f6480e48355f2c7b10a8d7d6746aaefa5eacc381a9cc057ea6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.8.0/datarig-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e515b464ab1aa60a8a57f113664055cb6624821fcb102fe2cdad701b86a6f8e6"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.8.0/datarig-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97951cb9a61d559d97471558fcca32c820a9741f5fb334409e6b49e1ab1892e0"
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
