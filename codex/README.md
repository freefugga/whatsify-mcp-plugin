# Whatsify MCP for OpenAI Codex CLI

1. Generate a token: dashboard → **Settings → AI Tools → Create Token**.
2. Export it (don't put it in `config.toml`):
   ```bash
   export WHATSIFY_MCP_TOKEN="mcp_..."
   ```
3. Append [`config.toml.example`](./config.toml.example) to `~/.codex/config.toml`.
4. Restart Codex. Confirm it connected:
   ```bash
   codex mcp list
   ```

If your Codex build is old enough that streamable-HTTP servers aren't picked up, add the commented-out `[features]` block at the top of the example file, or upgrade Codex.
