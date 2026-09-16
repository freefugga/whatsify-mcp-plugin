# Publish Whatsify to the MCP Registry

The [MCP Registry](https://registry.modelcontextprotocol.io) is the neutral, client-agnostic directory — it's what ChatGPT/Codex-adjacent tooling and most third-party MCP directories crawl (separate from Anthropic's own Connectors Directory, see [`../CONNECTORS_DIRECTORY_CHECKLIST.md`](../CONNECTORS_DIRECTORY_CHECKLIST.md)).

`server.json` here is ready to publish under the `io.github.freefugga` namespace (verified via GitHub OAuth — matches the `freefugga` account this repo and the public plugin mirror are under). This has to be run by that account, not by an agent:

```bash
# install mcp-publisher: https://github.com/modelcontextprotocol/registry#cli
mcp-publisher login github
cd <path-to-this-registry-directory>   # the directory containing server.json
mcp-publisher publish
```

To update the listing later: bump `"version"` in `server.json`, then re-run `mcp-publisher publish`.
