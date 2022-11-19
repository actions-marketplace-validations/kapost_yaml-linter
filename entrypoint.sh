#!/bin/bash

if [[ -n $TARGET_DIRECTORY ]] && [[ -n $CUSTOM_CONFIG ]]; then
    yaml_list=( $(find $TARGET_DIRECTORY \( -name "*.yaml" -o -name "*yml" \)) )
    
    for file in ${yaml_list[@]}; do
        yamllint -c $CUSTOM_CONFIG $file
    done

elif [[ -n $TARGET_DIRECTORY ]] && [[ -z $CUSTOM_CONFIG ]]; then
    yaml_list=( $(find $TARGET_DIRECTORY \( -name "*.yaml" -o -name "*yml" \)) )
    
    for file in ${yaml_list[@]}; do
        yamllint $TARGET_DIRECTORY
    done

elif [[ -z $TARGET_DIRECTORY ]] && [[ -n $CUSTOM_CONFIG ]]; then
    yaml_list=( $(find . \( -name "*.yaml" -o -name "*yml" \)) )
    
    for file in ${yaml_list[@]}; do
        yamllint -c $CUSTOM_CONFIG $file
    done

else
    yaml_list=( $(find . \( -name "*.yaml" -o -name "*yml" \)) )
    
    for file in ${yaml_list[@]}; do
        yamllint .
    done
fi
