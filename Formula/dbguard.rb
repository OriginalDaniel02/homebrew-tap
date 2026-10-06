class Dbguard < Formula
  desc "Catch database migrations that will lock production, and schema drift"
  homepage "https://github.com/OriginalDaniel02/dbguard"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.5.0/dbguard_darwin_arm64"
      sha256 "4cdc53477bd932fa99912669c9099523d673adc9a04f5b851b6c10bdbb4e3074"
    end
    on_intel do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.5.0/dbguard_darwin_amd64"
      sha256 "6c2cc8d4db5638a5a2ab5afbfd1d9f4908c95f408bcdd6a91f3626ac5e7e6ef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.5.0/dbguard_linux_arm64"
      sha256 "6f0b83f212258080aa87f579be42f2f5eca2a2aa480c19497e98a71456934b91"
    end
    on_intel do
      url "https://github.com/OriginalDaniel02/dbguard/releases/download/v0.5.0/dbguard_linux_amd64"
      sha256 "5f3821cd2d3f316831e110138f2b7d09a923db62b1d0335c96674b374d3cea69"
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
