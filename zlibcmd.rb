class Zlibcmd < Formula
  desc "Row zlib compression commandline program"
  version "1.1"
  homepage "https://github.com/ebc-2in2crc/zlibcmd"
  url "https://github.com/ebc-2in2crc/zlibcmd/releases/download/v#{version}/zlibcmd-#{version}.zip"
  sha256 "885053f352600dd0726f1694883415706e07b6613741a0b48b02d87743b6181f"

  def install
    bin.install "zlib"

    archiveBaseName="zlibcmd-#{version}"
    system "cp", "#{buildpath}/#{archiveBaseName}.jar", "#{bin}/#{archiveBaseName}.jar"
  end

  test do
    system "#{bin}/zlib", "--version"
  end
end

