$ErrorActionPreference = "Stop"
$RepoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = Join-Path $env:USERPROFILE ".gemini\config\plugins"
$Plugins = @("office-documents", "engineering-protocols", "writing-and-learning", "design-workflows", "finance-workflows")

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null

foreach ($p in $Plugins) {
  $src = Join-Path $RepoDir $p
  $dst = Join-Path $TargetDir $p
  robocopy $src $dst /MIR /NFL /NDL /NJH /NJS /NC /NS | Out-Null
  Write-Output "Synced $p -> $dst"
}
exit 0
