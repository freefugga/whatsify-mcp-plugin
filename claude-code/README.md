# Whatsify plugin for Claude Code

Connects Claude Code to your Whatsify organisation's [MCP server](https://api.whatsify.me/mcp) so Claude can send WhatsApp messages, run campaigns, manage contacts, and more — gated by whatever permissions you grant the token.

## Install

```bash
claude plugin marketplace add freefugga/whatsify-mcp-plugin
claude plugin install whatsify
```

On install, Claude Code will prompt for **Whatsify MCP token**. Get one from your dashboard: **Settings → AI Tools → Create Token**. The plaintext token is shown once — copy it into the prompt right away.

To change it later:

```bash
claude plugin config whatsify
```

## How it works

- `.mcp.json` registers `whatsify` as a remote HTTP MCP server at `https://api.whatsify.me/mcp`.
- `scripts/auth-headers.sh` turns the token you entered into an `Authorization: Bearer …` header on every request — the token itself is never written to a file in this plugin.
- Tool access is scoped server-side to whatever permissions the token was created with in the dashboard, not by anything in this plugin.
