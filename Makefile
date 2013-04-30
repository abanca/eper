all:
	./rebar compile escriptize

clean:
	./rebar clean

meta:
	git log --name-only | grep -Ev "^[ ]+$$|git-svn-id" > ChangeLog
	echo " Mats Cronqvist <masse@cronqvi.st>" > AUTHORS
	git log | grep Author | grep -Evi "vagrant|no author|mats cronqvist" \
	  | sort -u | cut -c8- >> AUTHORS
#	git add ChangeLog AUTHORS
#	git commit --amend --dry-run --reuse-message HEAD
