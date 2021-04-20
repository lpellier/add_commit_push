# add_commit_push
small and easy to use tool to make the add/commit/push process a little bit faster

no installation script for now, just put an alias in your zsrch : alias acp="acp_path"

to run the command, type:
$ acp "branch"

needs to be run from your git repo. 
the script will run the fclean rule if it finds a makefile in the repo.
it will then show you the staged changes and ask for confirmation before asking for commit name and pushing to the desired branch.
