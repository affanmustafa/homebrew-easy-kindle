# typed: false
# frozen_string_literal: true

class EasyKindle < Formula
  desc "CLI tool to convert web articles into EPUB and send to Kindle"
  homepage "https://github.com/affanmustafa/easy-kindle"
  version "1.0"
  
  url "https://github.com/affanmustafa/easy-kindle/releases/download/v#{version}/easy-kindle"
  sha256 "008d9bfcfe88a93d4f821f960c3713b2e45521fdddb4e92f071906356cbefa3a"

  def install
    bin.install "easy-kindle"
    chmod 0755, bin/"easy-kindle"
  end

  test do
    system "#{bin}/easy-kindle", "--help"
  end
end
