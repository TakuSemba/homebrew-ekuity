# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ekuity < Formula
  version "1.0.0"
  desc "A command-line tool written in Kotlin for calculating equity"
  homepage "https://github.com/TakuSemba/Ekuity"
  url "https://github.com/TakuSemba/Ekuity/releases/download/1.0.0/ekuity.tar"
  sha256 "2560d74de874086d44ac6b81ec42c109b4bdfeeec17e775d8e6194bc79d24e0a"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    lib.install "lib/ekuity.jar"
    bin.install "bin/ekuity"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Ekuity`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
