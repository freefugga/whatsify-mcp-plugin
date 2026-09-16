# Whatsify MCP for other AI tools

Any client that speaks standard remote MCP (`mcpServers` with a `url` + `headers`) — Cursor, Windsurf, Cline, and most others — works with [`mcp-config.json.example`](./mcp-config.json.example):

1. Generate a token: dashboard → **Settings → AI Tools → Create Token**.
2. Copy the block from `mcp-config.json.example`, replace `YOUR_WHATSIFY_MCP_TOKEN`, and merge it into that tool's MCP config file. The `mcpServers` key and file location are the same shape across tools, only the path differs:
   - Cursor: `~/.cursor/mcp.json` or a project's `.cursor/mcp.json`
   - Windsurf: Windsurf Settings → MCP Servers → "View raw config"
   - Cline (VS Code): the extension's "Configure MCP Servers" command
   - Anything else: check that tool's own MCP docs for its config file path — the JSON shape above is the standard one.
3. Restart the tool and confirm `whatsify` shows up as a connected MCP server.

## OAuth instead of a token

The Whatsify MCP server also supports full OAuth (dynamic client registration) at `https://api.whatsify.me/mcp`. If your tool has a built-in "add remote MCP server" / "custom connector" flow instead of a raw JSON config (e.g. Claude.ai, Claude Desktop's Settings → Connectors), just give it the URL — it'll open a browser to log in and consent, and no manual token is needed.
