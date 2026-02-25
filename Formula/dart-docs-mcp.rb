class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.1/dart-docs-mcp-macos.tar.gz"
  sha256 "f10c4bde30f9f0db7e1f9fe9da6cce022826c8fc25a6e1ca19eeb1ab1f7f91ee"
  version "0.0.1"

  def install
    bin.install "dart-docs-mcp-macos" => "dart-docs-mcp"
  end

  test do
    system "#{bin}/dart-docs-mcp", "--version"
  end
end
