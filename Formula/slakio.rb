class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.9/slakio-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "458656b946851bf6217ac1096228d2b9a2262d86f53b13d0f88588dfe9441496"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.9/slakio-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "cc15ba18f42ca86ec3933a17f5361c183596d22b6c91da268c9aa0c09f099019"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.9/slakio-v0.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e700077892c61de6ec0143a73d815d7adaf7934eca1d69fa67569b7ddde4188"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.9/slakio-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "853afdd9639209e196a73faf489b70cf2ed4843377a8c26d3848a4b942896a74"
    end
  end

  def install
    bin.install "slakio"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html"
  end

  test do
    assert_equal "slakio #{version}", shell_output("#{bin}/slakio --version").strip
  end
end
