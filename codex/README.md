# Whatsify MCP for OpenAI Codex CLI

1. Append [`config.toml.example`](./config.toml.example) to `~/.codex/config.toml`.
2. Log in:
   ```bash
   codex mcp login whatsify
   ```
   This opens your browser to Whatsify's login/consent screen. Sign in, approve the permissions, done — Codex stores the credentials and refreshes them itself.
3. Confirm it connected:
   ```bash
   codex mcp list
   ```

If your Codex build predates OAuth/streamable-HTTP support for MCP servers, upgrade Codex — there's currently no token-based fallback (Whatsify doesn't yet issue static API tokens for MCP).
