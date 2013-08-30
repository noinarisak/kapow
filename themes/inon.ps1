# ~ Kapow! ~
# Inon theme

# User in C:\Git\Repo on * master ~>
Function Prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host " " -NoNewline
  Write-Host "in" -NoNewline
  Write-Host " " -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host $(Kapow-Theme-GitBranch) -NoNewline -ForegroundColor Yellow
  Write-Host " " -NoNewline
  Write-Host "~>" -NoNewline
  Return " "
}

Function Kapow-Theme-GitBranch {
  If (Test-Path -Path .\.git) {
    Write-Host " " -NoNewline
    Write-Host "on" -NoNewline
    Write-Host " " -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
  }
}
