class Sasurahime < Formula
  desc "macOS developer cache cleaner"
  homepage "https://github.com/armaniacs/sasurahime"
  url "https://github.com/armaniacs/sasurahime/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e5ecce30e51db85b92da812c6ac18c99e4be09ba301f3856b94a97115c8cf206"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"sasurahime", "--version"
  end
end
