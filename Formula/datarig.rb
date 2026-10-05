class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.6.0/datarig-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "d646e91cf4ce8e4c067ab2d48294d6fd73e8a3f949b88a46c046d33cadb5ca4a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.6.0/datarig-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "75aab46922e86748be2a846a4b735ea8ee9969b39c072bee2361154fa68411a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.6.0/datarig-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b030602c6c009462abf8c21a9cdee0b2eb531fff2b5018d8f2075731875a307"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.6.0/datarig-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66c271737fc618370b8622d00b7f1b3941c7a3ae9e5dea0896b9480b47154ac4"
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
