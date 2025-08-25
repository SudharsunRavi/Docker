# Docker Compose - Essential Commands

| Command                              | Purpose                                                          |
| ------------------------------------ | ---------------------------------------------------------------- |
| `docker-compose up`                  | Start all services and stream logs                               |
| `docker-compose up -d`               | Start all services in detached mode (background)                 |
| `docker-compose down`                | Stop and remove containers                                       |
| `docker-compose down -v`             | Stop and remove containers **and volumes**                       |
| `docker-compose build`               | Rebuild images for services                                      |
| `docker-compose up -d --build`       | Rebuild and restart services in background                       |
| `docker-compose logs`                | View logs for all services                                       |
| `docker-compose logs -f`             | Follow logs in real-time                                         |
| `docker-compose logs <service>`      | View logs for a specific service (e.g., `backend`)               |
| `docker-compose ps`                  | List running services                                            |
| `docker-compose exec <service> bash` | Open a shell inside a container (use `sh` if `bash` unavailable) |
| `docker-compose stop <service>`      | Stop an individual service                                       |
| `docker-compose start <service>`     | Start a stopped service                                          |
| `docker-compose config`              | Validate YAML and see the fully expanded config                  |


* Replace `<service>` with your service name (`frontend`, `backend`, or `db`).
* Named volumes like `db_data` are used to persist data, especially for databases.
* Networks ensure containers can communicate by service name without exposing ports externally.
