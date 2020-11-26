db.ttn1.aggregate([
      // discard selection criteria, You can remove "$match" section if you want
      { $group: { 
        _id: { time: "$time"}, // can be grouped on multiple properties 
        dups: { "$addToSet": "$_id" }, 
        count: { "$sum": 1 } 
      }}, 
      { $match: { 
        count: { "$gt": 1 }    // Duplicates considered as count greater than one
      }}
      //{$out : "ttn2"}
    ])
    
                  // You can display result until this and check duplicates 
     //If your result getting response in "result" then use else don't use ".result" in query    
    
     .forEach(function(doc) {
     
     doc.dups.shift();      // First element skipped for deleting
     
     db.ttn1.remove({_id : {$in: doc.dups }});  // Delete remaining duplicates
    })
