docker run -d --platform linux/amd64 \
--name ss \
-e SINGLESTORE_LICENSE=BDM0YTEwNGQ4OTUxYTRjYTFhMjc1YzhjMmE2MWE5YjU4AAAAAAAAAAAAAAIAAAAAAAQwNQIZAMURb7ioCarkucnnOz+gUGz1A86EIsktiQIYH5IbjcETJ0F+1MVdqE7+YLP7Sut4FIgbAA== \
-e ROOT_PASSWORD=beijing \
-p 3306:3306 -p 18080:8080 -p 9000:9000 \
nexus.viperbj.net/singlestoredb-dev:7.5
