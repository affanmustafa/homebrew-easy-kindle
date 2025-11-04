# typed: false
# frozen_string_literal: true

class EasyKindle < Formula
  desc "CLI tool to convert web articles into EPUB and send to Kindle"
  homepage "https://github.com/affanmustafa/easy-kindle"
  version "1.2"
  
  url "https://github.com/affanmustafa/easy-kindle/releases/download/v#{version}/easy-kindle"
  sha256 "6d05d55890c5cfb2c755fea94d81b50d8ad9a3d75e302a63d19f8767b0b31a10"

  def install
    bin.install "easy-kindle"
    chmod 0755, bin/"easy-kindle"
  end

  test do
    system "#{bin}/easy-kindle", "--help"
  end
end
