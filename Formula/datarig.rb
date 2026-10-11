class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.0/datarig-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "83a571183b5218935011e6549d520bbc877cd675308d0b66bd15a4a4b79c0295"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.0/datarig-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ea9b1b0add4d1e03763d1d0be231c776120b813aa93c513313120555b54f8738"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.0/datarig-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03c101a77355336cc959c045dd64424d40b6ca74bd6b2a19c594869584156fd0"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.0/datarig-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db9aaaf5e1f0a7355c93affbd176f036812b80edf57d8386b827de902484348f"
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
