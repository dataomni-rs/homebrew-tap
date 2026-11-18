# DataOmni Homebrew Tap

Official [Homebrew](https://brew.sh/) tap for **[DataOmni](https://dataomni.dev/)** — native desktop client for SQL databases (MySQL, PostgreSQL, SQLite, SQL Server, Oracle, DuckDB, ClickHouse), MongoDB, Redis, Neo4j, and Elasticsearch, with a built-in read-only CLI and MCP server.

## Install

```bash
brew install --cask dataomni-rs/tap/dataomni
```

What this installs:
- **`/Applications/DataOmni.app`** — signed with an Apple Developer ID and notarized by Apple (Apple Silicon, macOS 12 Monterey or later, bundled with Oracle Instant Client Basic Light).
- **`$(brew --prefix)/bin/dataomni`** — symlink to the built-in read-only CLI (`dataomni cli`) and stdio MCP server (`dataomni mcp`).

## Upgrade

```bash
brew upgrade --cask dataomni-rs/tap/dataomni
```

## Uninstall

```bash
# Remove app and CLI symlink (keeps saved connections & workspace)
brew uninstall --cask dataomni

# Remove app, CLI symlink, and local config/cache/logs
brew uninstall --cask --zap dataomni
```

## Links

- Website & Docs: <https://dataomni.dev/> ([中文文档](https://dataomni.dev/zh/docs/quickstart/))
- Source & Releases: <https://github.com/dataomni-rs/DataOmni>
