require "formula"

class GrOsmosdr < Formula
  homepage "http://sdr.osmocom.org/trac/wiki/GrOsmoSDR"
  url "http://cgit.osmocom.org/gr-osmosdr/snapshot/gr-osmosdr-0.1.4.tar.gz"
  sha1 "672041a6ffa767d39ffad2432e2a13c11e3ec984"

  depends_on "cmake" => :build
  depends_on :python
  build.without? "python-deps"
  depends_on "Cheetah" => :python
  depends_on "gnuradio"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
