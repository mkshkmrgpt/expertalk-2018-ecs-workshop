[
  {
    "name": "${service_name}",
    "image": "${docker_image}",
    "memoryReservation": ${memory_reservation},
    "essential": true,
    "mountPoints": [
      {
        "containerPath": "/var/run/docker.sock",
        "sourceVolume": "${docker_sock_volume}"
      }
    ],
    "portMappings": [
      {
        "containerPort": ${container_port}
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "${log_group}",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "${service_name}"
      }
    }
  }
]
