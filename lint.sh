#!/usr/bin/env bash
# lists out all your eslint errors from most common to least

function parse () {
  #echo "PARSING $1"
  ARR=()
  foo=$1
  for (( i=${#foo} - 1; i>0; i-- )); do
    #echo ${foo:$i:1}
    #ARR=(${foo:$i:1} "${ARR[@]}")
    ARR+=${foo:$i:1}
    
    if [[ ${foo:$i:1} = *[\ ]* ]]; then
      break
    fi
  done

  for (( idx=${#ARR[@]}-1 ; idx>=0 ; idx-- )) ; do
    rev=""
    ERR="${ARR[idx]}"
    for(( i=0 ; i<${#ERR} ; i++ )); do rev="${ERR:i:1}$rev"; done
    echo $rev >> errors.txt
  done 
}

rm errors.txt; npm run lint | grep "error" | while read -r line ; do parse "$line" ; done; sort errors.txt | uniq -c | sort -n -r && rm errors.txt
