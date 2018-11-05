#!/bin/bash
usage="Usage:`basename $0` (start)"
command=$1
function start() {
  if [ -f "./config.json" ] && [ -f "./ontology-sdk-java.jar" ];then
    java -cp .:ontology-sdk-java.jar:ontology-shadowchain-java-1.0-SNAPSHOT.jar demo.ServerDemo
  else
    echo Missing jar package
  fi
}
case $command in
  (start)
      start
      ;;
  (*)
     echo "$usage"
     ;;
esac
