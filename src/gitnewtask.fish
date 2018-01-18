function gitnewtask --description "gitnewtask <jiraname [feature branch namge>"
  if test (count $argv) -eq 1
    set branch $argv[1]
    git checkout -b feature/$branch
    git push --set-upstream origin feature/$branch
  else
    echo "Error! Param missing... or too many params.."
    echo "Usage:"
    echo "  gitnewtask <jiraname [feature branch namge>"
  end
end