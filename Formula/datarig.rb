class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.34.0/datarig-v0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "2849b58f5a3445f8dfc79303c39af940d46cb641b22bb0931aaef5603c1cef92"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.34.0/datarig-v0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa54d25b2f6c033bffaf36ebfa12d58df82d96db0352acf9ef9c2511fdfa6752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.34.0/datarig-v0.34.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2aaa30b724b909d601946bf1e65528502f93edd58053b62db26d88192a62eb1"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.34.0/datarig-v0.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aac6a145ffa761a06e356d7f4dc4310ae317b9704fbfcddb348653834e4200a3"
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
