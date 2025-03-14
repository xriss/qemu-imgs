Recreating this box from scratch is rather manual and rather slow

need to read and run the 01-02-03-etc script files one after another and deal with the manual installer process

use vagrant as the name and password when prompted.

After this we have a very basic box but should be able to ssh into it and bring it up/down using the provided scripts

Luckly this has already been donw so provided you have run the git-pull script in the root of the repo we should be good to go



	./git-ssh-copy-id

should be run once to start the box and copy your ssh key into it

after that

	./ssh

should just work as an interactive shell or for scripting

remember to

	./box-down

when finshed or it will keep runing in the background



