#!/bin/bash

if [[ -n $TARGET_DIRECTORY ]] && [[ -n $CUSTOM_CONFIG ]]; then
    yamllint -c $CUSTOM_CONFIG $TARGET_DIRECTORY
elif [[ -z $TARGET_DIRECTORY ]] && [[ -n $CUSTOM_CONFIG ]]; then
    yamllint -c $CUSTOM_CONFIG .
elif [[ -n $TARGET_DIRECTORY ]] && [[ -z $CUSTOM_CONFIG ]]; then
    yamllint $TARGET_DIRECTORY
else
    yamllint .
fi
