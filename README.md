# mongdb_ttn_import
import TTN(The Things Network) data into mongodb 

## Getting Started

This project was built using
- [mongoDB](https://www.mongodb.com/)
- [Ubuntu 20.04 LTS](https://ubuntu.com/download/desktop/thank-you?version=20.04.1&architecture=amd64) 
- [Data Storage from The Things Network](https://console.thethingsnetwork.org/)

P.S: the Data Storage needed to be added inside Console->Integrations


### Prerequisites

- Ubuntu system
- Account and useful data source from The Things Network



### Installing

In order to use curl:

```
sudo apt-get install curl
```

follow instructions from [mongoDB install](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

use :

```
sudo apt-get install mongodb
```

instead of "mongodb-org"

then:

1. run mongodb
2. create new db
3. create new collection
4. edit code
5. set up crontab

```
crontab -e
```
fill in

```
*/5 * * * * ~/runme.sh
```
means execute the rume.sh every 5mins


## Authors

* **Xiangjun Wei** - *Initial work* - [Kingsjok](https://github.com/Kingsjok)


