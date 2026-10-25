class Sasurahime < Formula
  desc "macOS developer cache cleaner"
  homepage "https://github.com/armaniacs/sasurahime"
  url "https://github.com/armaniacs/sasurahime/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "e8558af44608ee4ddc2b266aea3b95195c2e24db42b7614cc6e42783903f9b1a"
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
