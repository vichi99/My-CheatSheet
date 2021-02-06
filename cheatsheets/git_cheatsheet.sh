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

# set output to terminal; not in vim
git config --global pager.branch false 

# autocomplete git on MAC - 6 lines below
# https://medium.com/fusionqa/autocomplete-git-commands-and-branch-names-in-terminal-on-mac-os-x-4e0beac0388a
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash 
# add_to_bash_profile:
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bashgg
fi
