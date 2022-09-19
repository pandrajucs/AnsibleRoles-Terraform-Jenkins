ssh-keygen
cat /home/ansible/.ssh/id_rsa.pub
nano inventory
ansible -i inventory -m ping all
touch datafiles.tar.gz
ll
nano index.j2
ll
mkdir roles
cd roles
ansible-galaxy init post-install
exit
