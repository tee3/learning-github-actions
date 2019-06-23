workflow "Hello Workflow" {
  on = "push"
  resolves = ["Hello Action", "cplusplus Action"]
}

action "cplusplus Action" {
  uses = "tee3/github-actions/cplusplus@master"
  runs = ["sh", "-c", "cd cplusplus && bjam"]
}

action "Hello Action" {
  uses = "./.github/hello"
}
