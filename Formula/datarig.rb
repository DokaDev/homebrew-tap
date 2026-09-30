class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0-rc.2/datarig-v0.1.0-rc.2-aarch64-apple-darwin.tar.gz"
      sha256 "74609b2d4fdf62958984ffd5fde68c6fef1bc3668bd8eab2e00ff222f957e3e7"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0-rc.2/datarig-v0.1.0-rc.2-x86_64-apple-darwin.tar.gz"
      sha256 "77ceaf3b9a0d4efb5eba30a697e2043ef5fd889b9b51189767f6405afa817646"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0-rc.2/datarig-v0.1.0-rc.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49435bd3df13fc3fda3812467d83313c5f019fa83ef89f81662086e5ab5ad245"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0-rc.2/datarig-v0.1.0-rc.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6efff622ace3571cf786dab3f0e2483c41dc3e070b4b33764a362b83630afbac"
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
