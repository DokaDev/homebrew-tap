class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.0/datarig-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed5eac013a9f1ff45b9e17069d43da386ad2cbdee5365e51ac1c9ee16b7243e2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.0/datarig-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "5788761b257f91e7c98ced706fb06b7c55a2f37e133ad9375b02ac4657485942"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.0/datarig-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ef47591f7ff19f393c03e7e3367e2a9b150721dfdcbe956c97a579e21356933"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.0/datarig-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb0dd10f2cfe309a8b7bb8fbea55518913a466c8f1aaaeb27c68691c935b8078"
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
