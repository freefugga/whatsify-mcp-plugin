# Anthropic Connectors Directory — submission checklist

This is the one-click browse/install list inside Claude.ai and Claude Desktop's Settings → Connectors (separate from the [MCP Registry](./registry) and from the Claude Code plugin — see [`README.md`](./README.md)). Submission happens in a portal inside *your* Claude.ai org settings, so this is a checklist, not something that gets done automatically.

## Done

- **OAuth 2.0 with dynamic client registration** — already live at `https://api.whatsify.me/mcp` (see `routes/ai.php` in the `whatsify-laravel` backend repo).
- **Tool annotations** — every tool in the backend's `app/Mcp/Tools` now declares a `Title` and the applicable `IsReadOnly`/`IsDestructive`.

## Still needed from you

- **Icon** — you pasted it in chat, but I have no way to pull the actual image bytes out of the conversation onto disk. Save it yourself to `assets/icon.png` in this repo (drag it into that folder, or run `open .` there and drop it in) and I'll wire it in on the next pass.

- **Team or Enterprise Claude.ai org** with Directory permission (Owner by default, or a custom role granting it on Enterprise). Individual plans can't access the submission portal.
- **A real, public privacy policy URL.** Couldn't confirm whatsify.me has one live — required, and a missing/incomplete one means immediate rejection per Anthropic's review criteria.
- **A documentation URL** — could be the public plugin repo ([freefugga/whatsify-mcp-plugin](https://github.com/freefugga/whatsify-mcp-plugin)) or a proper docs page, your call.
- **Test-account credentials** for the reviewer — a fully populated Whatsify org (connected WhatsApp account, some contacts/campaigns) so every tool is actually exercisable end to end.
- **Confirm you've run every tool yourself** (via MCP Inspector or as a custom connector in Claude) — required step before submitting.
- **Submit** at [claude.ai/admin-settings/directory/submissions/new](https://claude.ai/admin-settings/directory/submissions/new). The portal also asks for: server name/tagline/description, categories, support contact, company name/website, and seven compliance acknowledgments.

Full requirements: [claude.com/docs/connectors/building/submission](https://claude.com/docs/connectors/building/submission).
