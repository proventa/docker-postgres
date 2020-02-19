# docker-postgres
Setup a local containerized PostgreSQL Instance with Docker. The used images based on the official PostgreSQL Docker Image on [dockerhub](https://hub.docker.com/_/postgres) and official [pgadmin4 Image](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html).

PostgreSQL Environment variables you can find on the official [dockerhub](https://hub.docker.com/_/postgres) page for PostgreSQL.

## Prerequisites

* Docker installed
  * [Windows](https://docs.docker.com/docker-for-windows/install/)
  * [Linux - CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)
* docker-compose installed
  * Windows: Installed with Docker Desktop.
  * [Linux](https://docs.docker.com/compose/install/)

## PostgreSQL instance

1. git clone https://github.com/proventa/docker-postgres.git
1. Start postgres instance
* `docker-compose up`
3. Show running containers
* `docker container ls`
4. Connect to postgres container
* `docker exec -it pg bash`
5. Connect with psql client (required psql installation on Host-System)
* `psql -h localhost -p 5432 -d postgres -U postgres`

### pgadmin4

* Open local pgadmin4 in browser
  * http://localhost:80
* Login with credentials from `docker-compose.yml`
* Add postgres container to servers
