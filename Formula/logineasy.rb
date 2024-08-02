ss Logineasy < Formula
  desc "A simple login utility"
  homepage "https://github.com/penguinify/logineasy"
  url "https://github.com/penguinify/logineasy/archive/refs/tags/v0.1.1.zip"
  sha256 "9f2d4c4718aaa636bd01409a49d24dd734493a58d068d521611cbe9ff8e76d35"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "logineasy"
  end

  test do
    system "#{bin}/logineasy", "--version"
  end
end
