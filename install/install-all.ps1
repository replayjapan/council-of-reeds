$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path (Join-Path $ScriptDir "..")

$ClaudeSource = Join-Path $RepoRoot "command-templates\claude-code-plugin\council"
$CodexSource = Join-Path $RepoRoot "command-templates\codex-skills\council"
$GeminiSource = Join-Path $RepoRoot "command-templates\gemini-cli-commands\council"

$ClaudeTarget = if ($env:COUNCIL_CLAUDE_PLUGIN_DIR) { $env:COUNCIL_CLAUDE_PLUGIN_DIR } else { Join-Path $HOME "Documents\Council\plugins\council" }
$CodexTarget = if ($env:COUNCIL_CODEX_SKILLS_DIR) { $env:COUNCIL_CODEX_SKILLS_DIR } else { Join-Path $HOME ".agents\skills\council" }
$GeminiTarget = if ($env:COUNCIL_GEMINI_COMMANDS_DIR) { $env:COUNCIL_GEMINI_COMMANDS_DIR } else { Join-Path $HOME ".gemini\commands\council" }

function Require-Directory {
    param([string]$Path)
    if (!(Test-Path $Path)) {
        throw "Missing required template directory: $Path"
    }
}

function Copy-DirectoryClean {
    param(
        [string]$Source,
        [string]$Target
    )
    $Parent = Split-Path -Parent $Target
    New-Item -ItemType Directory -Force -Path $Parent | Out-Null
    if (Test-Path $Target) {
        Remove-Item -Recurse -Force $Target
    }
    Copy-Item -Recurse $Source $Target
}

Write-Host "=== Council of Reeds - Installing CLI Commands ==="
Write-Host ""

Require-Directory $ClaudeSource
Require-Directory $CodexSource
Require-Directory $GeminiSource

$ExistingTargets = @($ClaudeTarget, $CodexTarget, $GeminiTarget) | Where-Object { Test-Path $_ }

if ($ExistingTargets.Count -gt 0) {
    Write-Host "Existing Council command folders were found:"
    foreach ($Target in $ExistingTargets) {
        Write-Host "  - $Target"
    }
    Write-Host ""
    Write-Host "This installer will replace those Council command folders."
    Write-Host "Your Council projects and past round outputs will not be touched."
    Write-Host "Do not continue if you placed custom non-Council files inside those folders."
    Write-Host ""
    $Confirm = Read-Host "Continue and replace the existing Council command folders? [y/N]"
    if ($Confirm -notmatch "^[Yy]$") {
        Write-Host "Install cancelled."
        exit 0
    }
    Write-Host ""
}

Write-Host "--- Installing Claude Code Council plugin ---"
Copy-DirectoryClean $ClaudeSource $ClaudeTarget
Write-Host "Installed Claude Code plugin at: $ClaudeTarget"
Write-Host "Commands: /council:round1 through /council:round10, /council:final, /council:crosscheck"
Write-Host ""

Write-Host "--- Installing Codex Council skills ---"
Copy-DirectoryClean $CodexSource $CodexTarget
Write-Host "Installed Codex skills at: $CodexTarget"
Write-Host "Commands: `$round1 through `$round10, `$final, `$crosscheck"
Write-Host ""

Write-Host "--- Installing Gemini CLI Council commands ---"
Copy-DirectoryClean $GeminiSource $GeminiTarget
Write-Host "Installed Gemini CLI commands at: $GeminiTarget"
Write-Host "Commands: /council:round1 through /council:round10, /council:final, /council:crosscheck"
Write-Host ""

Write-Host "--- Checking Codex profile ---"
$CodexConfigDir = Join-Path $HOME ".codex"
$CodexConfig = Join-Path $CodexConfigDir "config.toml"
New-Item -ItemType Directory -Force -Path $CodexConfigDir | Out-Null

if (!(Test-Path $CodexConfig)) {
    @"
[profiles.council]
model = "gpt-5.4"
model_reasoning_effort = "high"
"@ | Set-Content -Path $CodexConfig -Encoding UTF8
    Write-Host "Created Codex config with [profiles.council]."
} else {
    $ConfigText = Get-Content $CodexConfig -Raw
    if ($ConfigText -match "\[profiles\.council\]") {
        Write-Host "Codex council profile already exists."
    } else {
        Write-Host "Note: Codex config already exists. Add this manually if you want the same profile:"
        Write-Host ""
        Write-Host "[profiles.council]"
        Write-Host "model = `"gpt-5.4`""
        Write-Host "model_reasoning_effort = `"high`""
    }
}

Write-Host ""
Write-Host "=== Installation Complete ==="
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Claude Code: claude --plugin-dir `"$ClaudeTarget`", then /council:round1"
Write-Host "2. Codex: codex -p council, then `$round1"
Write-Host "3. Gemini CLI: gemini, then /council:round1"
