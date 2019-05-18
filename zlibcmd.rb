class Zlibcmd < Formula
  desc "Row zlib compression commandline program"
  version "1.0"
  homepage "https://github.com/ebc-2in2crc/zlibcmd"
  url "https://github.com/ebc-2in2crc/zlibcmd/releases/download/v#{version}/zlibcmd-#{version}.zip"
  sha256 "be0f5908a2820867f048244dd8a7d0d410715a55e1757b8ef82d3a0fa200dd88"

  def install
    bin.install "zlib"

    archiveBaseName="zlibcmd-#{version}"
    system "cp", "#{buildpath}/#{archiveBaseName}.jar", "#{bin}/#{archiveBaseName}.jar"
  end

  test do
    system "#{bin}/zlib", "--version"
  end
end

