#!/usr/bin/env bash

# Create the user account
ARG USER=winer
ARG HOME=/home/$USER
ARG USER_ID=1020
# To access the values from children containers.
ENV USER=$USER \
    HOME=$HOME
