# docker-nginx-file-listing

The nginx powered image to get a file directory listing.

Map a desired directory to `/mnt/najezd_data` container mountpoint.

Example:
```
docker run -p 80:80 -v /mnt/smth/logs:/mnt/najezd_data p4t0k/nginx-file-listing:0.2
```
