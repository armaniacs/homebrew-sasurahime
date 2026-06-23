class Sasurahime < Formula
  desc "macOS developer cache cleaner"
  homepage "https://github.com/armaniacs/sasurahime"
  url "https://github.com/armaniacs/sasurahime/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "a85f99d7f0d12b1b66bd01c515e7b3e77c851bbfe5eae6d86af7f4a92dd1d845"
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
