# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Logineasy < Formula
  desc "cli tool to show ALL startup items/daemons (OSX)"
  homepage ""
  url "https://github.com/penguinify/logineasy/archive/refs/tags/v0.1.zip"
  sha256 "230b89056d5957c212b7374e14602f46860dbfae6cfdba868ae2ef98c666659b"
  license "GPL-3.0"

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", "--disable-silent-rules", *std_configure_args
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
  end
end
