.PHONY: update-fork

update-fork:
	@# Add upstream remote if it doesn't exist. Ignoring error if it does.
	-git remote add upstream https://github.com/visjs/vis-network.git
	git fetch upstream master
	git merge FETCH_HEAD
	@# If there are conflicts, the merge will fail and the user will need to fix them manually.
	@# If the merge is successful, we push to origin.
	git push origin master
