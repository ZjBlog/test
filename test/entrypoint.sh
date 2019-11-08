#!/bin/sh -l
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
echo ${GITHUB_SHA}
echo $URL
curl $URL+'?text='+$MESSAGE+'\&desp='+${GITHUB_SHA}
echo '👍 GREAT SUCCESS!'
