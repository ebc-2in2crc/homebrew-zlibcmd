ZLIBCMD_VERSION="1.0"
ARCHIVE_BASENAME="zlibcmd-#{ZLIBCMD_VERSION}"
class Zlibcmd < Formula
  desc "Row zlib compression commandline program"
  homepage "https://github.com/ebc-2in2crc/zlibcmd"
  url "https://github.com/ebc-2in2crc/zlibcmd/releases/download/v1.0/zlibcmd-1.0.zip"
  sha256 "be0f5908a2820867f048244dd8a7d0d410715a55e1757b8ef82d3a0fa200dd88"

  def install
    bin.install "zlib"
	system "cp", "#{buildpath}/#{ARCHIVE_BASENAME}.jar", "#{bin}/#{ARCHIVE_BASENAME}.jar"
  end

  test do
    system "#{bin}/zlib", "--version"
  end
end

