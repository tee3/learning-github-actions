workflow "Hello Workflow" {
  on = "push"
  resolves = ["Hello Action"]
}

action "Hello Action" {
  uses = "./.github/hello"
}
