class Dbguard < Formula
  desc "Catch database migrations that will lock production, and schema drift"
  homepage "https://github.com/OriginalDaniel02/dbguard"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.4.0/dbguard_darwin_arm64"
      sha256 "df67a55d8c29ea4fe9c33e42526c887bc9cacbbe9c93103d4609c1265fd7aa23"
    end
    on_intel do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.4.0/dbguard_darwin_amd64"
      sha256 "5ababa4ac09fe064529c76c760586edff51009419d8c6007395b3ed74640c383"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.4.0/dbguard_linux_arm64"
      sha256 "6a29a3029e303a56e2fce0d0e17fd5656d9d2e76140ba6706e8c64fc1605ca8c"
    end
    on_intel do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.4.0/dbguard_linux_amd64"
      sha256 "0a32bcc6b94edfcbfc8f4d27de61e827a5d298e8a4433cce5e945ecd78209302"
    end
  end

  def install
    # A plain (non-archive) download is staged under its own file name.
    bin.install Dir["dbguard_*"].first => "dbguard"
  end

  test do
    assert_match "dbguard v#{version}", shell_output("#{bin}/dbguard version")
  end
end
