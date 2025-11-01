# typed: false
# frozen_string_literal: true

class EasyKindle < Formula
  desc "CLI tool to convert web articles into EPUB and send to Kindle"
  homepage "https://github.com/affanmustafa/easy-kindle"
  version "1.2"
  
  url "https://github.com/affanmustafa/easy-kindle/releases/download/v#{version}/easy-kindle"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  def install
    bin.install "easy-kindle"
    chmod 0755, bin/"easy-kindle"
  end

  test do
    system "#{bin}/easy-kindle", "--help"
  end
end
