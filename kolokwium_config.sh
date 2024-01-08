#!/bin/bash

# a. Skonfiguruj nazwę i email globalnie
git config --global user.name "niko1326"
git config --global user.email "niko1326.hirsch@gmail.com"

# b. Skonfiguruj i dodaj klucze SSH na maszynie
ssh-keygen -t rsa -b 4096 -C "niko1326.hirsch@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa