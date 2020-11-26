NDATA=$(curl -s -X GET --header 'Accept: application/json' --header 'Authorization: key....)  //u get this from Data storage website
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

