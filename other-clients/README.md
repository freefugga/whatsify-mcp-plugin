# Whatsify MCP for other AI tools

Whatsify only supports connecting via OAuth right now — there's no manual API token to create and paste. So this works with any client that does OAuth for remote MCP servers (RFC 8414/9728 discovery + dynamic client registration): Cursor, Windsurf, Cline, and most others.

1. Add the server with just its URL — no headers, no token field:
   ```json
   { "mcpServers": { "whatsify": { "url": "https://api.whatsify.me/mcp" } } }
   ```
   (see [`mcp-config.json.example`](./mcp-config.json.example)). File location differs per tool:
   - Cursor: `~/.cursor/mcp.json` or a project's `.cursor/mcp.json`
   - Windsurf: Windsurf Settings → MCP Servers → "View raw config"
   - Cline (VS Code): the extension's "Configure MCP Servers" command
   - Anything else with a built-in "add remote MCP server / custom connector" UI (e.g. Claude Desktop, Claude.ai): just paste the URL there instead of editing JSON.
2. Connect / restart the tool. It should open your browser to Whatsify's login/consent screen — sign in, approve the permissions, and the tool stores the resulting credentials itself.

## If your tool only supports a static Bearer token

Some simpler or older MCP clients don't implement the OAuth flow and only accept a fixed `Authorization` header. Whatsify doesn't currently issue those (no "create token" option in the dashboard yet, even though the API path exists) — those clients can't connect to Whatsify yet.
