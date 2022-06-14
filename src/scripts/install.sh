#!/bin/bash

params=()
[[ $PARAM_REPO_UPDATE == true ]] && params+=(--repo-update)
[[ $PARAM_DEPLOYMENT == true ]] && params+=(--deployment)
[[ $PARAM_CLEAN_INSTALL == true ]] && params+=(--clean-install)
[[ $PARAM_PROJECT_DIRECTORY == true ]] && params+=(--project-directory)

pwd
cat "${params[@]}"
pod install "${params[@]}"