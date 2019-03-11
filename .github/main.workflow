workflow "dotnet" {
  on = "push"
  resolves = ["new-action"]
}

action "new-action" {
  uses = "./dotnetcore-cli/"
}
