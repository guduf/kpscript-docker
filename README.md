# Keepass2 Script Docker Image

Unofficial Docker Image for KPScript (KeePass 2)
Based on [official mono image](https://hub.docker.com/_/mono/)

## Documentation
[Official KPScript Documentation](https://keepass.info/help/v2_dev/scr_sc_index.html)

## Example
```
docker run --rm -v "$(pwd)/MyDb.kdbx:/home/MyDb.kdbx" guduf/kpscript -c:ListEntries ./MyDb.kdbx -pw:MyPassword
```