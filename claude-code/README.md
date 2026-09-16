# Whatsify plugin for Claude Code

Connects Claude Code to your Whatsify organisation's [MCP server](https://api.whatsify.me/mcp) so Claude can send WhatsApp messages, run campaigns, manage contacts, and more — gated by whatever permissions your organisation grants during connection.

## Install

```bash
claude plugin marketplace add freefugga/whatsify-mcp-plugin
claude plugin install whatsify
```

On first use, Claude Code opens your browser to Whatsify's login/consent screen (OAuth) — sign in, approve the permissions, and you're connected. There's no token to create or paste.

## How it works

- `.mcp.json` registers `whatsify` as a remote HTTP MCP server at `https://api.whatsify.me/mcp`.
- The server advertises OAuth discovery metadata, so Claude Code handles login, consent, and token refresh on its own.
