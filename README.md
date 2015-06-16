## docker-bootstrap-data

This is a data-only container where all the app files will be stored.

Replace: `/path/to/local`
with the location of the data files you want this container to access 

Replace: `/path/on/container`
with the location of your data files in your container

Run it
```
docker run --name bootstrap-data -v /path/to/local:/path/on/container:rw benmag/bootstrap-data
```

Build it (if you've made changes to this Dockerfile):
```
docker build -t benmag/bootstrap-data .
```
