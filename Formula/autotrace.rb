class Autotrace < Formula
  desc "AutoTrace is a utility for converting bitmap into vector graphics."
  homepage "https://github.com/sameersemna/autotrace-macos"
  url "https://github.com/sameersemna/autotrace-macos/archive/v0.31.1.tar.gz"
  version "0.31.1"
  sha256 "afd4af74cb3bcbec00721e6721cfecf14c6cccac5a8d2d094e379323db34e234"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
