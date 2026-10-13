class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.20.0/datarig-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f8ca1b4f7caa544be4e30e9e97a6ab54f3a082b3ba0660994e321fc35e2c501"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.20.0/datarig-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "c353231107281f4537a46db2f98beb92e306ae1182f417bec64a4647762fce45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.20.0/datarig-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9bee47bf641f585af1eee90a0a20362bddf40c5e4151f77e337b6095701c570"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.20.0/datarig-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34a91e5812a7eba58ea2140e2b71d2b60cf768cb365ce353c18536809cb261e5"
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
