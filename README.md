# phpgcc
phpgcc dockerized thanks to https://github.com/erwanlr for this.


```
git clone https://github.com/What-Security-LTD/phpgcc/phpgcc.git
cd phpgcc
docker build -t phpgcc .
docker run --rmi -v -v `$pwd`:/tmp/ -it phpgcc
```
