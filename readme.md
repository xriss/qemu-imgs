
lets build our own damn qemu boxes then

run

	./install

to install required dependencies which will require sudo, read the script and do it manually if that bothers you

then you must run


	./git-pull


to unpack the boxes hard drive and setup the box branch in the box directory.
Note that this will reset your box back to its original state so it will forget your ssh keys

after this you can and should

	debian11-arm64/box-ssh-copy-id

to run a box and copy your ssh keys into it for easier use

if that all worked then the box will be runing and the following scripts should be good to go

	debian11-arm64/box-up		# this runs the box in the foreground
	debian11-arm64/box-up-wait	# this runs the box in the background
	debian11-arm64/ssh		# connect to shell or run a command on the box
	debian11-arm64/box-down		# shuts down box and autokills qemu in case things went badly


Remember to box-down when finished.

