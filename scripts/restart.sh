
#!/bin/bash
 
COUNT=0
LIMIT=3
 
FILE='/home/pi/Documents/count.txt'
if [ -f "$FILE" ]; then
    COUNT=`cat $FILE`
fi
 
if [[ "$COUNT" < "$LIMIT" ]]; then
    COUNT="$((COUNT + 1))"
    echo count is $COUNT
    echo $COUNT > $FILE
    /home/pi/reboot.sh
else
    echo count reached $LIMIT
fi