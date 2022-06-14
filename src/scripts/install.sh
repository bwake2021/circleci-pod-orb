#!/bin/bash

params=()
[[ $PARAM_REPO_UPDATE == 1 ]] && params+=("--repo-update" )
[[ $PARAM_DEPLOYMENT == 1 ]] && params+=("--deployment" )
[[ $PARAM_CLEAN_INSTALL == 1 ]] && params+=("--clean-install" )
[[ $PARAM_PROJECT_DIRECTORY != '.' ]] && params+=("--project-directory=$PARAM_PROJECT_DIRECTORY" )

pwd

echo PARAM_REPO_UPDATE && echo $PARAM_REPO_UPDATE
echo PARAM_DEPLOYMENT && echo $PARAM_DEPLOYMENT
echo PARAM_CLEAN_INSTALL && echo $PARAM_CLEAN_INSTALL
echo PARAM_PROJECT_DIRECTORY && echo $PARAM_PROJECT_DIRECTORY

echo "${params[@]}"
pod install "${params[@]}"