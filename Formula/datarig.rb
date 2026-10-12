class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.15.0/datarig-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a13ff1fe2b83b917439d1f09818dc137bfcd28d3492a50506b37c697e5093f3"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.15.0/datarig-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "b16cf3cae146a6e507ef0d095d7d53b22c4aa00f6341fbf92bf2e3c661147331"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.15.0/datarig-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c1d2092b12c61318a940cb11d644a2195a210f418e45bd54b6d965594520a8d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.15.0/datarig-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da0849f9d2febaecf5e0ef3db37d85fc255bba0634507acaa442b6016f4d1982"
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
