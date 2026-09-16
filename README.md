# Connect Whatsify to your AI tools

Whatsify runs a remote [MCP](https://modelcontextprotocol.io) server at `https://api.whatsify.me/mcp` exposing WhatsApp messaging, campaigns, contacts, and account tools to AI agents — gated by whichever permissions you grant during connection.

Authentication is OAuth only right now: you connect from inside your AI tool, it opens a browser to Whatsify's login/consent screen, you sign in and approve, done. There's currently no dashboard option to generate a static API token for MCP (the backend supports it — `McpToken::issue()` — it's just not wired up in the dashboard UI yet), so any tool that *only* supports static-header auth for remote MCP servers can't connect yet.

Pick your tool:

| Tool | Guide |
| --- | --- |
| Claude Code | [`claude-code/`](./claude-code) — `claude plugin marketplace add freefugga/whatsify-mcp-plugin && claude plugin install whatsify` |
| Claude Desktop / Claude.ai | Settings → Connectors → Add custom connector → `https://api.whatsify.me/mcp` |
| OpenAI Codex CLI | [`codex/`](./codex) |
| Cursor, Windsurf, Cline, other MCP clients | [`other-clients/`](./other-clients) |

This is the source of truth, mirrored (unchanged) as the public [freefugga/whatsify-mcp-plugin](https://github.com/freefugga/whatsify-mcp-plugin) repo that `claude plugin marketplace add` above points to. Re-copy this directory there after any change and push.
