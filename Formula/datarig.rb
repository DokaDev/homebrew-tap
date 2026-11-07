class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.0/datarig-v0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3c63351488e3fc8b5f6ec0e263ac0b84c968a1856dc9d6940e90e486fc7678a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.0/datarig-v0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac8be3d1d986316ccde97cefa69f7ffeef168055fdbd4f37f530538797cee272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.0/datarig-v0.39.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09f3edddc5609513e5c77adf3f1b07553a02e4919f4805b03acc461b66a42084"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.0/datarig-v0.39.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d8425a83097158b4c986e8add5b6ae3b9640d51dce89d1e0b4fcd0d78e7de07"
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
