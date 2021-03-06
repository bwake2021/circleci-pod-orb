#!/bin/bash

params=()
[[ $PARAM_REPO_UPDATE == 1 ]] && params+=("--repo-update" )
[[ $PARAM_DEPLOYMENT == 1 ]] && params+=("--deployment" )
[[ $PARAM_CLEAN_INSTALL == 1 ]] && params+=("--clean-install" )
[[ $PARAM_PROJECT_DIRECTORY != '.' ]] && params+=("--project-directory=$PARAM_PROJECT_DIRECTORY" )

PREFIX=''
if [ $PARAM_USES_BUNDLER == 1 ]; then

    if hash bundle 2>/dev/null; then
        echo 'Bundler installed.'
    else
        echo >&2 "The Bundler is required, but it's not installed.  Aborting.";
        echo "Consider either removing \"with-bundler\" setting or set up the environment.";
        exit 1;
    fi

    if gem spec cocoapods > /dev/null 2>&1; then
        echo 'cocoapods gem installed.'
    else
        echo "Gem cocoapods is not installed!";
        echo "Double check if it's included into your Gemfile, and \"bundle install\" executed during the build pipeline.";
        exit 1;
    fi

    PREFIX='bundle exec'
fi

echo 'Will be executed:' $PREFIX pod install "${params[@]}"

$PREFIX pod install "${params[@]}"