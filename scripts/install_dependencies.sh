#!/bin/bash
echo "$DEPLOYMENT_GROUP_NAME"  >>  example.txt

if [ "$DEPLOYMENT_GROUP_NAME" == "Staging" ]
then
    #do something
fi