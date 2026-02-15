# PlateIt Project Sync Script
# Automates the Git Add, Commit, and Push workflow with style.
# Usage: .\push.ps1 "Your commit message"

$commitMessage = $args[0]

# --- Setup Aesthetics ---
function Write-Header {
    param($text)
    Write-Host "`n=== $text ===" -ForegroundColor Cyan -BackgroundColor Black
}

function Write-Step {
    param($text)
    Write-Host " -> $text" -ForegroundColor Gray
}

function Write-Success {
    param($text)
    Write-Host "`n✅ $text" -ForegroundColor Green
}

function Write-Error-Msg {
    param($text)
    Write-Host "`n❌ $text" -ForegroundColor Red
}

Write-Header "PlateIt Auto-Push System"

# 1. Validation Logic
if (-not (test-path .git)) {
    Write-Error-Msg "Not a git repository. Please run this from the project root."
    exit
}

# 2. Check for changes
$status = git status --porcelain
if (-not $status) {
    Write-Host "`n✨ No changes detected. All systems synchronized." -ForegroundColor Yellow
    exit
}

# 4. Prepare Commit Message
if (-not $commitMessage) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $commitMessage = "Chef's Update: $timestamp"
}

# 5. Staging & Committing
Write-Step "Staging all changes..."
git add .

Write-Step "Committing: '$commitMessage'..."
git commit -m "$commitMessage" --quiet
if ($LASTEXITCODE -ne 0) {
    Write-Error-Msg "Commit failed."
    exit
}

# 6. Pushing
Write-Step "Deploying to GitHub (main)..."
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Error-Msg "Push failed. Check your connection or credentials."
    exit
}

Write-Success "All changes pushed successfully! PlateIt is up to date."
Write-Host ""
