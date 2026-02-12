def main : IO Unit := do
  IO.println "What is your name?"
  let stdin <- IO.getStdin
  let input <- stdin.getLine
  let name := input.dropEndWhile Char.isWhitespace
  IO.println s!"Hello, {name}"
