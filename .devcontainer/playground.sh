#!/usr/bin/env bash

LOCALENV_HOME=${1:-""}
LOCALENV_PATH=$2
LOCALENV_USERPROFILE=$3
CONTAINERENV_HOME=$4
CONTAINERENV_PATH=$5
CONTAINERENV_USERPROFILE=$6
LOCALWORKSPACEFOLDER=$7
CONTAINERWORKSPACEFOLDER=$8
LOCALWORKSPACEFOLDERBASENAME=$9
CONTAINERWORKSPACEFOLDERBASENAME=$10

# localWorkspaceFolder     /var/lib/docker/codespacemount/workspace/PRG2
# containerWorkspaceFolder /workspaces/PRG2

echo -e "
--- 0 devcontainer environment variables -------------------------------------
HOME                             : $HOME
PATH                             : $PATH
localEnv:HOME                    : $LOCALENV_HOME
localEnv:PATH                    : $LOCALENV_PATH
localEnv:USERPROFILE             : $LOCALENV_USERPROFILE
containerEnv:HOME                : $CONTAINERENV_HOME
containerEnv:PATH                : $CONTAINERENV_PATH
containerEnv:USERPROFILE         : $CONTAINERENV_USERPROFILE
localWorkspaceFolder             : $LOCALWORKSPACEFOLDER
containerWorkspaceFolder         : $CONTAINERWORKSPACEFOLDER
localWorkspaceFolderBasename     : $LOCALWORKSPACEFOLDERBASENAME
containerWorkspaceFolderBasename : $CONTAINERWORKSPACEFOLDERBASENAME
--- 1 env -------------------------------------"

# env
ls -lha "$LOCALWORKSPACEFOLDER"
ls -lha "$CONTAINERWORKSPACEFOLDER"

echo -e '--- 2 pwd -------------------------------------'

pwd
pwd ~

echo -e '--- 3 -------------------------------------'
