#!/bin/bash

REPOS_LOCATION="$HOME/.cocoapods/repos"

params=()
[[ $PARAM_REPO_UPDATE == true ]] && params+=(--repo-update)
[[ $PARAM_DEPLOYMENT == true ]] && params+=(--deployment)
[[ $PARAM_CLEAN_INSTALL == true ]] && params+=(--clean-install)
[[ $PARAM_PROJECT_DIRECTORY == true ]] && params+=(--project-directory)

pod install "${params[@]}"