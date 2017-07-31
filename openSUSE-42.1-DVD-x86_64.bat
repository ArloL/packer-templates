packer build openSUSE-42.1-DVD-x86_64.json
vagrant box add --name evosec-openSUSE-42.1-DVD-x86_64 --force packer_openSUSE-42.1-DVD-x86_64_virtualbox.box
rm packer_openSUSE-42.1-DVD-x86_64_virtualbox.box
