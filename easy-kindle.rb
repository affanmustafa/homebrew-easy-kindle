# typed: false
# frozen_string_literal: true

class EasyKindle < Formula
  desc "CLI tool to convert web articles into EPUB and send to Kindle"
  homepage "https://github.com/affanmustafa/easy-kindle"
  version "1.3"
  
  url "https://github.com/affanmustafa/easy-kindle/releases/download/v#{version}/easy-kindle"
  sha256 "7d5b00cb96e0b502501b27b3281ce6a4a972ec2aa99d2041278060992741ef09"

  def install
    bin.install "easy-kindle"
    chmod 0755, bin/"easy-kindle"
  end

  test do
    system "#{bin}/easy-kindle", "--help"
  end
end
