# typed: false
# frozen_string_literal: true

class EasyKindle < Formula
  desc "CLI tool to convert web articles into EPUB and send to Kindle"
  homepage "https://github.com/affanmustafa/easy-kindle"
  url "https://github.com/affanmustafa/easy-kindle/archive/refs/heads/main.zip"
  license "MIT"
  version "1.0.0"
  sha256 "008d9bfcfe88a93d4f821f960c3713b2e45521fdddb4e92f071906356cbefa3a"
  
  depends_on "bun"

  def install
    system "bun", "install"
    
    # Create the entry point
    bin.install "index.ts" => "easy-kindle"
    
    # Make the index.ts executable
    chmod 0755, bin/"easy-kindle"
    
    # Install all dependencies
    prefix.install Dir["*"]
  end
end

