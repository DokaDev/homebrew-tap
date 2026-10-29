class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.35.0/datarig-v0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f33422c210fbc10d0e6a356b5e608c1970dbcbb5c484a171354e5e78054ad5d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.35.0/datarig-v0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d2845347896cc0e74f422e1dba1eb0a68e8e820464689827dc6254e37c0e543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.35.0/datarig-v0.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d859b072b92c282e00094625518804b7679980aacfa04f2ddaad34b5badba450"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.35.0/datarig-v0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d1086a2a74443a0afb383637e1f8f5ffe887bebb0efbf94d446b903568e48c4"
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
