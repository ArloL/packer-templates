packer build openSUSE-Leap-15.0-DVD-x86_64.json
vagrant box add --name evosec-openSUSE-Leap-15.0-DVD-x86_64 --force packer_openSUSE-Leap-15.0-DVD-x86_64_virtualbox.box
del packer_openSUSE-Leap-15.0-DVD-x86_64_virtualbox.box
