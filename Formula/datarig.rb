class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.25.0/datarig-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "28e165d821706d65a9ca58a83a67913e37ac8f937caf2f7a6e49bc3b73381b8d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.25.0/datarig-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "00ea682c617aa3d0afe254b358f18881273e835800f61749dd39376c4c97b18b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.25.0/datarig-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d458ae5841e6a6d4e083227a9f6da8c358fb92e4a3ac938e92dee55b0a69cab2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.25.0/datarig-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "116b9a809474c77a6373a35d526aeded2e821dcb458624ba738743a5779391c1"
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
