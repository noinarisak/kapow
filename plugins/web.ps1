# ~ Kapow! ~
# Web plugin

# Aliases
Set-Alias goo Plugin-Web-SearchGoogle

# Functions
Function Plugin-Web-SearchGoogle ($Term) {
  Start-Process "http://www.google.com/search?q=$Term"
}
