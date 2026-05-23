class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  version "0.0.6"

  if OS.mac?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.6/dart-docs-mcp-macos.tar.gz"
    sha256 "536837e207276daa373e0211fba1e32b17273b3f46883d7d62c221dec9ed1914"
  elsif OS.linux?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.6/dart-docs-mcp-linux.tar.gz"
    sha256 "ceae4fee4fddba825ba1e059a3c24a6032d16d46591a659e6ddd9c1beb713c49"
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
