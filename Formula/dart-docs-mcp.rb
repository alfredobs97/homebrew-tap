class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  version "0.0.3"

  if OS.mac?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.3/dart-docs-mcp-macos.tar.gz"
    sha256 "b9704f61acff86b6c2544f4220c5fa2e4b8f080fd22a8be9b6070f274f3d9489"
  elsif OS.linux?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.3/dart-docs-mcp-linux.tar.gz"
    sha256 "602853eaf0cf625824682c220a44893213791b2b79fe857b72acdd0fceddff08"
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
