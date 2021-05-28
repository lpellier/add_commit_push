# add_commit_push
Small and easy to use tool to make the add/commit/push process a little bit faster

## Installation
<b>Use the following commands to install (replace zshrc by bashrc or whatever shell you're using):</b>

```bash
git clone https://github.com/lpellier/add_commit_push.git ~/.add_commit_push
echo "alias acp=~/.add_commit_push/acp.sh" >> ~/.zshrc
source ~/.zshrc
```

## Usage

To run the script, type:
```bash
acp <branch>
```
It needs to be run from your git repo.

The script will run the fclean rule if it finds a makefile in the repo.<br>
It will then show you the staged changes and ask for confirmation before asking for commit name and pushing to the desired branch.
