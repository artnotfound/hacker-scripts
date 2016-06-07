#### find large files / directories with human readable filesizes

```bash
find / -size +10M -exec ls -lh {} +
```

#### get file size info

```bash
du -sh [file]
```

#### mount usb

make mount point
```bash
sudo mkdir /media/usb
```

list disk drives
```bash
sudo fdisk -l
```

mount drive
```bash
sudo mount -t vfat /dev/[drive_name] /media/usb -o uid=1000,gid=100,utf8,dmask=027,fmask=137
```


run program via ssh show up on ssh'd hosts screen
```
run-program | sudo tee /dev/console >/dev/null
```

copy all file types to a specific folder
```bash
cp `find -E . -regex '.*\.(jpg|png|mov|jpeg)'` ~/Manny/
```

delete all files of a certain type in current folder
```bash
find . -type f -iname \*.jpg -delete
```
