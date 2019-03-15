#!/data/data/com.termux/files/usr/bin/bash
yes | pkg upgrade  && \
#pkg install wget && \
#wget https://its-pointless.github.io/setup-pointless-repo.sh && \
#sh setup-pointless-repo.sh && \
yes | pkg install \
  python \
  python-dev \
  libffi \
  libffi-dev \
  openssl \
  openssl-dev \
  libsodium  \
  clang \
  cmake
# install the latest Python package manager.
# The version of pip that comes with Python maybe outdated.
pip install --upgrade pip 
pip list --outdated --format=freeze | \
  grep -v '^\-e' | \
  cut -d = -f 1 | \
  xargs -n1 pip install -U && \
#  The pynacl dependency originally did not install because
#  it gave problems  building dependencies'
pip install  --upgrade pynacl 
pip install --upgrade ansible
