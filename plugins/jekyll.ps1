# ~ Kapow! ~
#
# Jekyll plugin
#  For working with Jekyll.
#
# Usage:
#  jkl <Tab>  Cycle through common Jekyll commands.

# Aliases
Set-Alias jkl Plugin-Jekyll-TabExpansion

# Functions
Function Plugin-Jekyll-TabExpansion {
  Param([ValidateSet(
    "build", "docs", "doctor", "help", "import", "new", "serve")]
  $Cmd)
  jekyll $Cmd ($args -join "")
}
