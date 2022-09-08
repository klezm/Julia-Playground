# Julia-Playground

## Tutorials

- https://julialang.org/learning/
- https://github.com/search?q=julia+tutorial
    - https://github.com/mitmath/julia-mit
    - https://github.com/mitmath/18S191 ([Fall20](MITJuliaCourse/Fall20)) ([Spring21](MITJuliaCourse/Spring21))
        - https://computationalthinking.mit.edu/
    - https://github.com/storopoli/Julia-Workshop
    - https://github.com/sylvaticus/juliatutorial ([local copy](juliatutorial))
- https://juliaacademy.com/courses
    - https://github.com/JuliaAcademy/JuliaTutorials ([local copy](JuliaTutorials))
- https://exercism.org/tracks/julia/exercises
- https://www.tutorialspoint.com/julia/index.htm
- https://www.freecodecamp.org/news/learn-julia-programming-language/

### Add repos as subtrees

```bash
git remote add -f -t Fall20 -t Spring21 MITJuliaCourse https://github.com/mitmath/18S191
git subtree add --prefix MITJuliaCourse/Fall20 --squash MITJuliaCourse Fall20
git subtree add --prefix MITJuliaCourse/Spring21 --squash MITJuliaCourse Spring21

git remote add -f -t main JuliaAcademyTut https://github.com/JuliaAcademy/JuliaTutorials.git
git subtree add --prefix JuliaTutorials --squash JuliaAcademyTut main

git remote add -f sylvaticusTut https://github.com/sylvaticus/juliatutorial.git
git subtree add --prefix juliatutorial --squash sylvaticusTut master
```

Your `.git/config` shoudl look like that

```toml
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/klezm/Julia-Playground
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "main"]
	remote = origin
	merge = refs/heads/main
[remote "MITJuliaCourse"]
	url = https://github.com/mitmath/18S191
	fetch = +refs/heads/Fall20:refs/remotes/MITJuliaCourse/Fall20
	fetch = +refs/heads/Spring21:refs/remotes/MITJuliaCourse/Spring21
[remote "JuliaAcademyTut"]
	url = https://github.com/JuliaAcademy/JuliaTutorials.git
	fetch = +refs/heads/main:refs/remotes/JuliaAcademyTut/main
[remote "sylvaticusTut"]
	url = https://github.com/sylvaticus/juliatutorial.git
	fetch = +refs/heads/master:refs/remotes/sylvaticusTut/master
```

Update subtrees

```bash
git fetch MITJuliaCourse Fall20
git subtree pull --prefix MITJuliaCourse --squash MITJuliaCourse Fall20
```

Cleanup git folder

- https://stackoverflow.com/questions/11050265/remove-large-pack-file-created-by-git
- https://www.atlassian.com/git/tutorials/git-prune

```bash
git gc # --aggressive
git prune --progress # --dry-run --verbose # Remove dangling loose objects
git repack -ad # Remove dangling objects from packfiles
```

#### Details

Also see [git config](.git/config).

- https://www.atlassian.com/git/tutorials/git-subtree
- https://docs.github.com/en/get-started/using-git/about-git-subtree-merges
- https://manpages.ubuntu.com/manpages/trusty/en/man1/git-subtree.1.html
- https://gist.github.com/SKempin/b7857a6ff6bddb05717cc17a44091202

```bash
git remote add -f <REMOTE NAME> <REPO URL>
git subtree add --prefix <SUBTREE DEST PATH> <REMOTE NAME> main --squash

git fetch <REMOTE NAME> main
git subtree pull --prefix <SUBTREE DEST PATH> <REMOTE NAME> main --squash
```

Short & Dirty

```bash
git subtree add --prefix <SUBTREE DEST PATH> <REPO URL> main --squash

git subtree pull --prefix <SUBTREE DEST PATH> <REPO URL> main --squash
```

Alternative

```bash
git remote add -f <REMOTE NAME> <REPO URL>
git merge -s ours --no-commit <REMOTE NAME>/main
git read-tree --prefix=<SUBTREE DEST PATH> -u <REMOTE NAME>/main
git commit -m"[subtree] adding <REMOTE NAME>"

git pull -s subtree <REMOTE NAME> main
```
