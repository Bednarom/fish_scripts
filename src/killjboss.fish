function killjboss
    echo 'Searching for Jboss instances...'
set -x PIDS (ps ux | awk '/jboss/ && !/awk/ {print $2}')
set -x strp (printf '%d' $PIDS)
if math "$strp==0" > /dev/null
    echo 'No JBOSS instance(s) found'
else
    echo "Found" $PIDS
    kill -9 $PIDS
    echo "Jboss killed!"
end
end