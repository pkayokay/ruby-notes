git log --oneline (shows log in one line)
git log --stat (shows stats of changes and which files)
git log -p (shows changes in the logs)
git log -p -w (shows non whitespace changes in the logs)
git log fdf5493 (will show commits from this point)
git show fdf5493 (only shows this commit, flags can be used)
git clone link newname
git add . (stages everything in the current directory)
git diff (shows the difference between last log and uncomitted changes, uses -p), but adding parameters changes this.
.gitignore (any file names inside this file will be ignored, but be added prior to staging)
globbing: special set of characters to specify sets of file names. [ex. samples/*.jpg (all .jpg's in the images folder)]
git tag -a v1.0 (add an addition tag, versions, revisions)
git log --decorate (view logs with current tag and branch)
git tag -d v1.0 (delete tag)
git tag -a v1.0 a87984 (add tagg to previous commit)
git branch -d nameofbranch (delete branch)
git branch nameofbranch (switch to brand)
git log --oneline --decorate --graph --all
git reset --hard HEAD^ (undo a merge)
git merge (current with past, if past with current, then it will do a fast forward merge)