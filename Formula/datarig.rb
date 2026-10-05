class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.4.0/datarig-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a23c5e625dfb783a8a56bdaf33a984a057acdb3682091e29b4bead33d910cd5"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.4.0/datarig-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "da19d0ec9d30327f6aa72a1d3d4678b1aaed6868a26d0c79edc69eb69e501b3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.4.0/datarig-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e49f413ea5bb8bd30f4cb87fac9514f60ada2e24eb4d0da7b14764981da8577f"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.4.0/datarig-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "194d3b7c10f918513de7ec3bb9953ada423c55d00717828436a84967b617046e"
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
