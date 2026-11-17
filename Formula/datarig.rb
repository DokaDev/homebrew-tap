class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.3/datarig-v0.41.3-aarch64-apple-darwin.tar.gz"
      sha256 "81c7f7edbddf9883403bf9e5338269512c46240f8a5b9fccd74d2b4b9d89d19c"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.3/datarig-v0.41.3-x86_64-apple-darwin.tar.gz"
      sha256 "5b64892b1ab7ca2f0e4355c3f2676d063e2342620756e3c474abd43eb2b69f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.3/datarig-v0.41.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55fea25cf5fcae4b57eeacf3757ae652d45da910c844c3890e7e38445ad49b0c"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.3/datarig-v0.41.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d9acfe809270acccda12f467ca4b80ba39176a50480d07ae4eab60ce385372e"
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
