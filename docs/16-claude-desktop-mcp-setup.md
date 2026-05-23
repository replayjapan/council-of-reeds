# Claude Desktop MCP Setup

This guide shows how to give Claude Desktop access to the `Council` folder using the Model Context Protocol filesystem server.

Do this once per computer.

Official MCP docs describe the Claude Desktop config file locations and the filesystem server package. See:

- [MCP local server setup](https://modelcontextprotocol.io/docs/develop/connect-local-servers)
- [Anthropic MCP documentation](https://docs.anthropic.com/en/docs/mcp)

## What You Need

- Claude Desktop installed
- Node.js installed
- the repo downloaded and renamed to `Council`

Check Node.js:

```bash
node --version
```

If you see a version number, continue. If not, install Node.js from [nodejs.org](https://nodejs.org/).

## 1. Find Your Council Folder Path

Mac example:

```text
/Users/yourname/Documents/Council
```

Windows example:

```text
C:\Users\YourName\Documents\Council
```

Use your real path.

## 2. Open Claude Desktop Config

Mac:

```text
~/Library/Application Support/Claude/claude_desktop_config.json
```

Windows:

```text
%APPDATA%\Claude\claude_desktop_config.json
```

In Claude Desktop, you can also open Settings, go to Developer, and use Edit Config if that option is available.

If the file does not exist, create it.

## 3. Add The Council Filesystem Server

If the file is empty, use one of these examples.

Mac:

```json
{
  "mcpServers": {
    "council": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/yourname/Documents/Council"
      ]
    }
  }
}
```

Windows:

```json
{
  "mcpServers": {
    "council": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\Users\\YourName\\Documents\\Council"
      ]
    }
  }
}
```

On Windows, double every backslash in the path.

If the file already has other MCP servers, add only the `"council"` entry inside the existing `"mcpServers"` object.

## 4. Restart Claude Desktop

Quit Claude Desktop completely and reopen it.

## 5. Check Access

Ask Claude:

```text
List the contents of my Council folder.
```

If the MCP is connected, Claude should be able to list the folder after you approve the tool use.

## 6. Create A Claude Project

Recommended:

1. Create a Claude Project called `Council of Reeds`.
2. Add the Council MCP connector to the Project.
3. Add the starter prompt from `docs/02-starter-prompt.md` to the Project instructions or paste it at the start of the first PLAI chat.
4. Start with the PLAI. Do not start Reeds first.

The PLAI will create the session folder under:

```text
Council/projects/
```
