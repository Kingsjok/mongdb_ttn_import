NDATA=$(curl -s -X GET --header 'Accept: application/json' --header 'Authorization: key ttn-account-v2.KyDWIhUE4gxukH--yr72Bji7mER29Xq9Jp2f6C5sQvk' 'https://test_sensor_da.data.thethingsnetwork.org/api/v2/query/test_node_tbeamvt?last=2d')
if [ -z "$NDATA"]
then
	echo "\$ no data"
else
	mongo ttn --eval "db.ttn1.insertMany($NDATA)"
	mongo ttn ~/dropdups.js
fi


#mongo ttn --eval 'db.ttn1.find()'
#echo $NDATA
#echo $NDATA | jq '.[]'
#echo "db.ttn1.insertMany($NDATA)"

