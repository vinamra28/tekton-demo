type -p tkn >/dev/null && {
    tkn hub install task git-clone
    tkn hub install task maven
} || {
    kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.7/git-clone.yaml
    kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/maven/0.2/maven.yaml
}


