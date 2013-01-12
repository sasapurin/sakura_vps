#!/bin/bash
cd ~/sasapurin/backup
bash dropbox_uploader.sh upload data.tar.gz /wadax-backup/data.tar.gz
bash dropbox_uploader.sh upload postgres.dmp.tar.gz /wadax-backup/postgres.dmp.tar.gz
bash dropbox_uploader.sh upload public_html.tar.gz /wadax-backup/public_html.tar.gz

