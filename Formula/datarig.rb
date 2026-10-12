class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.16.0/datarig-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "990be0f489954a25b90f56e036a2b6e2dde2b6523b73492607b047967e857af4"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.16.0/datarig-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "3445beac2c52855b196904e4e322f5ba7a3f684acbd48910c93c030a7112d84a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.16.0/datarig-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac1eb8216f7d37f636f0bc611990255ae9eed7f35f62cd4d82e8f27d0289b5c6"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.16.0/datarig-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "277ccb76853e3d71b68df47f3fc363f612f36b1127b50fb591364f9959422a66"
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
