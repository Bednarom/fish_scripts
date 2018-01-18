function killwildfly
    echo 'Searching for Wildfly instances...'
set -x PIDS (ps ux | awk '/wildfly/ && !/awk/ {print $2}')
set -x strp (printf '%d' $PIDS)
if math "$strp==0" > /dev/null
    echo 'No Wildfly instance(s) found'
else
    echo "Found" $PIDS
    kill -9 $PIDS
    echo "Wildfly killed!"
end
end