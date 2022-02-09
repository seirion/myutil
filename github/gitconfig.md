### contents of .gitconfig
```
[alias]
    co = checkout
    st = status
    ci = commit
    br = branch
    ch = cherry-pick
[user]
    name = babo
    email = seirion@mensakorea.org
[core]
    excludesfile = /Users/babo/.gitignore_global
    pager = less -FRX
[difftool "sourcetree"]
    cmd = opendiff \"$LOCAL\" \"$REMOTE\"
    path =
[mergetool "sourcetree"]
    cmd = /Applications/Sourcetree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
    trustExitCode = true
[pull]
    rebase = true
    ff = only
[push]
    default = current
```

### gitflow
[A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/) <br>
[번역](http://dogfeet.github.io/articles/2011/a-successful-git-branching-model.html)
