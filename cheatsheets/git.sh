# squash merge - 7 lines below
# https://stackoverflow.com/questions/14043961/git-squash-history-after-merge
git checkout my-branch            # The branch you want to squash
git branch -m my-branch-old       # Change the name to something old
git checkout master               # Checkout the master branch
git checkout -b my-branch         # Create a new branch
git merge --squash my-branch-old  # Get all the changes from your old branch
git commit                        # Create one new commit

# remote set
git remote set-url origin git@github.com:vichi99/My-CheatSheet.git 

# clean old branches and fetch with remote
git remote prune origin

# view log another branch
git log <branch>

# view file of another branch
git show branch:file ; git show branch:file > exported_file

# view diff file between commits
git diff HEAD HEAD~2 -- file.py

# view diff between commits
git diff commit1 commit2 ; (--name-only will show only files) 

# view diff between last commits
git diff HEAD^ 

# view only files of commit
git show HEAD --name-only

# view only staged diff
git diff --cached

# set output to terminal; not in vim
git config --global pager.branch false 

# autocomplete git on MAC - 6 lines below
# https://medium.com/fusionqa/autocomplete-git-commands-and-branch-names-in-terminal-on-mac-os-x-4e0beac0388a
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash 
# add_to_bash_profile:
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bashgg
fi


# rename local and remote branch
## Rename the local branch to the new name
git branch -m <old_name> <new_name>

## Delete the old branch on remote - where <remote> is, for example, origin
git push <remote> --delete <old_name>

## Or shorter way to delete remote branch [:]
git push <remote> :<old_name>

## Prevent git from using the old name when pushing in the next step.
## Otherwise, git will use the old upstream name instead of <new_name>.
git branch --unset-upstream <old_name>

## Push the new branch to remote
git push <remote> <new_name>

## Reset the upstream branch for the new_name local branch
git push <remote> -u <new_name>

## revert cherry-pick / return to HEAD
git reset --hard HEAD^

## uncommiting to HEAD
git reset --soft HEAD^

## uncommiting to HEAD
git reset --soft HEAD~1

## remove staged(green) file from commit
git reset HEAD <file>

## use the “git rm” command in order to delete the file from the index (also called the staging area).
git rm --cached <file>

# checkout file to head. If file is already pushed.
git checkout HEAD^ -- /path/to/file

# reset to origin master
git reset --hard origin/master

# reset commit files to unstage(green)
git reset --soft HEAD^
