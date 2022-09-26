# UE4Dumper4.26.2
> The repository is used to dump sdk from libUE4.so in android arm64-v8a.

## build
```shell
chmod 755 make.sh
./make


```

## usage
```shell
adb push UE4Dumper2.6.2 /data/local/tmp
adb shell 

su
cd /data/local/tmp
chmod 755 UE4Dumper2.6.2

./UE4Dumper2.6.2 --sdkw --newue --gname [address] --gworld [address] --package [package_name]
```