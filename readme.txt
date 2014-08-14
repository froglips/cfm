Config:
- target server
- target path(s)
- dest server
- dest path(s)
- file mapping file
- log

FileMapping:
- target filename convention
- dest filename convention

Log:
date:runkey:info:notes

Transfer Log
- named for run w/key: transfer_key.log
- target: name, cksum, size, date
- destination: rename, cksum, size, date

Function (server, path)
- ssh
  - key
  - connect remote

  - Server
  - auth

  - validate connection

Path Stuff (path)

- directory

- list files

- download file list
  - chksum files before/after download

- track filename mapping

- upload

- reuse file validation

Function log_transfer ()
- write to log
