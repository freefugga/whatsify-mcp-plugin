# Connect Whatsify to your AI tools

Whatsify runs a remote [MCP](https://modelcontextprotocol.io) server at `https://api.whatsify.me/mcp` exposing WhatsApp messaging, campaigns, contacts, and account tools to AI agents — gated by whichever permissions you grant the credential that connects.

Two ways to authenticate, either works everywhere below:

- **Token** — dashboard → **Settings → AI Tools → Create Token**. Shown once at creation; pass it as `Authorization: Bearer <token>`.
- **OAuth** — the server supports dynamic client registration, so any client with a built-in "add remote MCP server / custom connector" flow can just take the URL and log in interactively, no token needed.

Pick your tool:

| Tool | Guide |
| --- | --- |
| Claude Code | [`claude-code/`](./claude-code) — `claude plugin marketplace add freefugga/whatsify-mcp-plugin && claude plugin install whatsify` |
| Claude Desktop / Claude.ai | Settings → Connectors → Add custom connector → `https://api.whatsify.me/mcp` (OAuth, no token needed) |
| OpenAI Codex CLI | [`codex/`](./codex) |
| Cursor, Windsurf, Cline, other MCP clients | [`other-clients/`](./other-clients) |
