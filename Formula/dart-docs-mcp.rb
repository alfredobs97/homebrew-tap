class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.4/dart-docs-mcp-macos.tar.gz"
    sha256 "2054b4983a01c07cf385097cb7ffd8b99256b60491c95c36aa16ac9dffe85034"
  elsif OS.linux?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.4/dart-docs-mcp-linux.tar.gz"
    sha256 "f6d0f2e69cbdb530ce734a57f11f7879b01dbe3b336411daa0777325b0f7d41b"
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
