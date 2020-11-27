# mongdb_ttn_import
import ttn data into mongodb 

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
5. using runme.sh for updating, dropdups.js for removing duplications
6. set up crontab

```
crontab -e
```
fill in

```
*/5 * * * * ~/runme.sh
```
means execute the rume.sh every 5mins




## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

