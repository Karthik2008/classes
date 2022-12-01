# Package Management

|    |Debian|  RedHat| Mac   |
|----------|:-------------:|------:| -----:
|Extension |  .deb   | .rpm | .dmg |
|Flavours  |  Ubuntu |CentOS|-     |
|commands  | apt-get |  yum | brew

## How to check your operating system
Linux
>cat /etc/*se 

Mac
>sw_vers


## Installing
 >Example: Installing aws cli

Ubuntu

```
apt-get update
apt-get install awscli
```
Redhat
```
yum install awscli
```
mac
```
brew install awscli
```

### Common command
```
pip3 install awscli
```

## Uninstalling
 >Example: Installing aws cli

Ubuntu

```
apt-get remove awscli
```
Redhat
```
yum uninstall awscli
```
mac
```
brew uninstall awscli
```

### Common command
```
pip3 uninstall awscli
```

## Purge
```
sudo apt-get --purge {package name}
```
example
```
sudo apt-get --purge awscli
```


what is the difference between purge and remove?
> apt-get remove (removes) the package but keep the configuration files.


>apt-get purge (removes) package and configuration files too

For example, delete a package named awscli including config files stored in /etc/ directory

## Zip and Unzip

### How to Zip
```
gzip {file name}
```
I want to zip a file named test.txt, run:
```
> gzip test.txt

> ls
test.txt.gz
```
### How to Unzip
```
gunzip {file name}
```
I want to unzip a file named test.txt, run:
```
> ls
text.txt.gz

> gunzip test.txt

>ls
test.txt
```
### Scenario:
    How do I zip all the .txt files in a current directory?

### run:
    gzip *.txt 

here,
>The * sign is a wildcard, which means “any number of any characters.” This command would work on any (and all) filenames with the extension .txt

## CentOs Package Management
https://access.redhat.com/articles/yum-cheat-sheet

### To list the contents of a package,
```
dpkg -L {package name}
```
example,
```
dpkg -L awscli
```

nodejs application installation:
``` 
https://linuxhint.com/install-nodejs-ubuntu-getting-started/
```