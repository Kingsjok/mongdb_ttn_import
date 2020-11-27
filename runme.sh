NDATA=$(curl -s -X GET --header 'Accept: application/json' --header 'Authorization: key....)  
#get this curl sentence from Data storage website
if [ -z "$NDATA"]
then
	echo "\$ no data"
else
	mongo mydb --eval "db.mycollection.insertMany($NDATA)" 
#replace 'mydb', 'mycollection'
	mongo mydb ~/dropdups.js  
#replace 'mydb'
fi

#below just for testing

#mongo ttn --eval 'db.mycollection.find()'
#echo $NDATA
#echo $NDATA | jq '.[]'
#echo "db.mycollection.insertMany($NDATA)"

