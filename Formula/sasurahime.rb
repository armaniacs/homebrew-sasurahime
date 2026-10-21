class Sasurahime < Formula
  desc "macOS developer cache cleaner"
  homepage "https://github.com/armaniacs/sasurahime"
  url "https://github.com/armaniacs/sasurahime/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "08a316f37b68bc0e6402c112f2d4659fcec07ad40e8074888fb256064f7f1f41"
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
