# phpggc
phpgcc dockerized thanks to https://github.com/erwanlr for this.


```
git clone https://github.com/What-Security-LTD/phpgcc/phpggc.git
cd phpggc
docker build -t phpggc .
docker run --rm -v ${PWD}:/tmp/ -it phpggc
```
