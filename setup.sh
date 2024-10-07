#! /usr/bin/env bash

function clone_submodules() {
    git submodule update --init
}

function build_jtreg() {
    cd jtreg \
      && time bash make/build.sh --jdk /opt/java/openjdk \
      && cd - || exit
}

function configure_and_build_jdk() {
  cd jdk \
    && time bash configure --enable-debug --with-jtreg=../jtreg/build/images/jtreg \
    && time make images \
    && cd - || exit
}

clone_submodules
build_jtreg
configure_and_build_jdk