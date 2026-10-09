Dump:

docker exec -i mysql mysqldump -u root -p'password' oomnieye_construction > backup.sql


Restore docker exec -i mysql mysql -u root -p 'password' oomnieye_construction < backup.sql

Load all the images:

for f in *.tar; do
  docker load -i "$f" || break
done

