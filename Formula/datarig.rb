class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.2/datarig-v0.36.2-aarch64-apple-darwin.tar.gz"
      sha256 "9a9932e3bf10ecddcf2bb9dd8df80f1ee6c621a09fcb638cc01239473c29cd69"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.2/datarig-v0.36.2-x86_64-apple-darwin.tar.gz"
      sha256 "80cb7ee5bb7ad4b91a314350b0dcfde0d36d6922e4481267ed1929e38745d5e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.2/datarig-v0.36.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "714de4d3b3d75a118c1ff1e3e55b855e42700673054a29669d4708da225aa379"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.2/datarig-v0.36.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53a7b168391813fc800f998b8c685e9993bf1f7b8ca3281990ef4b1b8673dd4c"
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
