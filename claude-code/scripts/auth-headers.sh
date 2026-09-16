#!/bin/bash
# Builds the Authorization header for the Whatsify MCP server from the
# token the user entered in the plugin's userConfig (mcp_token) at
# install/config time. Claude Code exposes it as CLAUDE_PLUGIN_OPTION_MCP_TOKEN.
set -euo pipefail

if [ -z "${CLAUDE_PLUGIN_OPTION_MCP_TOKEN:-}" ]; then
  echo "Whatsify MCP token is not configured. Run: claude plugin config whatsify" >&2
  exit 1
fi

printf '{"Authorization": "Bearer %s"}' "$CLAUDE_PLUGIN_OPTION_MCP_TOKEN"
