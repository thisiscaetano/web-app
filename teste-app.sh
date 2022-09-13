#/bin/bash

RESULT="`wget -qO- http://3.94.169.114:8000`"
wget -q 3.94.169.114:8000
if [ $? -eq 0 ]
then
    echo 'ok - serviço no ar!'
elif [[ $RESULT == *"Number"* ]]
then
    echo 'ok - number of visits'
    echo $RESULT
else
    echo 'not ok - number of visits'
    exit 1
fi
