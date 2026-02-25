class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.1/dart-docs-mcp-macos.tar.gz"
    sha256 "f10c4bde30f9f0db7e1f9fe9da6cce022826c8fc25a6e1ca19eeb1ab1f7f91ee"
  elsif OS.linux?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.1/dart-docs-mcp-linux.tar.gz"
    sha256 "6af64a3c94bade4499d5395616818fc984c3ed3969ece06d165163115ea9113e"
  end

  def install
    if OS.mac?
      bin.install "dart-docs-mcp-macos" => "dart-docs-mcp"
    elsif OS.linux?
      bin.install "dart-docs-mcp-linux" => "dart-docs-mcp"
    end
  end

  test do
    system "#{bin}/dart-docs-mcp", "--help"
  end
end
