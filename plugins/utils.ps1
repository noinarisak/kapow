# ~ Kapow! ~
#
# Utilities plugin
#  For easier access to utility commands.

# Aliases
Set-Alias touch     touch.exe
Set-Alias clip      clip.exe
Set-Alias time      Measure-Time
Set-Alias psversion Get-Version

# Functions
Function Measure-Time {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [alias("c")]
    [string]$Command
  )
  Measure-Command {
    $Command
  }
}

Function Get-Version {
  Return "PowerShell: $($PSVersionTable.PsVersion.toString())"
}
