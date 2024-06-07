#!/bin/bash

# In "skafos-values.json" the value of "kubernetes_deb_version" can be retrieved from the "kubeadm" version available at
# https://download.opensuse.org/repositories/isv:/kubernetes:/core:/stable:/<version>:/build/deb/amd64/

export ANSIBLE_TIMEOUT=120
export PACKER_VAR_FILES="skafos-values.json"

packer plugins install github.com/hashicorp/vmware

make build-node-ova-local-ubuntu-2204
