class Dmidecode < Formula
  desc "Dmidecode reports information about your system's hardware."
  homepage "https://github.com/cavaliercoder/dmidecode-osx"
  url "https://github.com/cavaliercoder/dmidecode-osx/archive/v3.0.tar.gz"
  version "3.0"
  sha256 "f195cd104ddd2f2d83046f4ee96313305fc06cd82fbdecf0ef9d19da0d9c0886"

  def install
    system "make", "dmidecode"
    bin.install "dmidecode"
    man8.install "man/dmidecode.8"
  end

  test do
    system "#{bin}/dmidecode"
  end
end

