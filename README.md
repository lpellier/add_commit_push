# add_commit_push
small and easy to use tool to make the add/commit/push process a little bit faster

<b>use the following commands to install (replace zshrc by bashrc or whatever you're using):</b>

$ git clone https://github.com/lpellier/add_commit_push.git ~/.add_commit_push<br>
$ echo alias acp=~/.add_commit_push/acp.sh >> ~/.zshrc<br>
$ source ~/.zshrc

to run the command, type:
$ acp "branch"

needs to be run from your git repo.

the script will run the fclean rule if it finds a makefile in the repo.<br>
it will then show you the staged changes and ask for confirmation before asking for commit name and pushing to the desired branch.
