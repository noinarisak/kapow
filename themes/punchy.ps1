# ~ Kapow! ~
# Punchy theme

# [User][C:\Git\Repo][* master]>
Function prompt {
  Write-Host "[" -NoNewline
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "]" -NoNewline
  Write-Host "[" -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host "]" -NoNewline
  Write-Host $(Theme-Punchy-GitBranch) -NoNewline
  Write-Host ">" -NoNewline
  return " "
}

Function Theme-Punchy-GitBranch {
  If (Test-Path -Path .\.git) {
    Write-Host "[" -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
    Write-Host "]" -NoNewline
  }
}
