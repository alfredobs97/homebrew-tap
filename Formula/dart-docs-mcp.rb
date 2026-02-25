class DartDocsMcp < Formula
  desc "MCP server for Dart documentation"
  homepage "https://github.com/alfredobs97/dart_docs_mcp"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.2/dart-docs-mcp-macos.tar.gz"
    sha256 "97bb24f525f76b0a605c42373617a9aac809e409eb31099753301d0309e06a2c"
  elsif OS.linux?
    url "https://github.com/alfredobs97/dart_docs_mcp/releases/download/0.0.2/dart-docs-mcp-linux.tar.gz"
    sha256 "5696977ac78cc73edbe1def8b246fc6c03d9dda2ea8e05a7a46aa69ce057ef8a"
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
