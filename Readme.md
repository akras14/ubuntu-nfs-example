# Example of setting up and mounting Network File System (NFS) across multiple apps

## See it in action

1. Clone this repo
2. Make sure you have Vagrant and Virtual Box installed
3. Navigate to this repo in your terminal and run `vagrant up nfs`
4. Wait for it to come up and run `vagrant up app1`
5. Wait for it to come up and run `vagrant up app2`
6. SSH into app1 via `vagrant ssh app1`
7. Navigate into `/mnt/shared` in app1
8. Crate any test file using your favorit text editor
9. Exit and ssh into app2 via `vagrant ssh app2`
10. Navigate to `/mnt/shared` and you should see your file there
11. Exit and ssh into the NFS server via `vagrant ssh nfs`
11. Navigate to `/home/vagrant/shared` and confirm that your file is visible there as well.

There you have it, working NFS setup

## Where is the magic?
The [server setup is here](bin/nfs.sh) and [client setup is here](bin/app.sh)
