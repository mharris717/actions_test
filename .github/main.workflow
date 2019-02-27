workflow "New workflow" {
  on = "push"
  resolves = ["Do Stuff"]
}

action "Do Stuff" {
  uses = "./"
  env = {
    HELLO = "WORLD"
  }
}
