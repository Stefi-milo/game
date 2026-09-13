Welcome to my home project, created purely for practising DevOps skills and building a homelab playground.

# Game Arcade 🎮

A browser-based game arcade focused on practising DevOps commands and concepts in a fun, game-like way.

The project is publicly available, but the complete hosted version runs on my private Kubernetes infrastructure.

## Quick Start

Make sure you have Docker installed:

https://docs.docker.com/get-docker/

## Run the game locally

Use a specific image tag rather than `:latest`:

```bash
docker run --rm -p 8080:80 ghcr.io/stefi-milo/game:xxxx
```

Then open:

```text
http://localhost:8080
```

### Important

The Docker image contains the game application itself, but the study content and cheatsheets are stored separately on the Kubernetes infrastructure used by the hosted version.

This means that pulling and running the Docker image locally gives you the application, but it does not include the complete set of study topics from the hosted environment.

For the complete version with all available topics, use the public website: **game.karatemilo.com**

## HOME ARCADE

The game is designed for practising commands and concepts across different DevOps skills.

Instead of simply reading commands from a cheatsheet, you can practise them through a game-style matching challenge. The goal is to make learning and repetition a little more fun.

## TOPICS

* Git
* Node.js
* Kubernetes
* Linux
* Web Server
* Terraform
* Network Troubleshooting
* Curl
* Helm
* Docker
* MySQL
* Ansible
* PostgreSQL
* Proxmox
* Regex
* Ruby

More topics may be added over time.

## Architecture

The project uses a simple separation between the application and the study content:

```text
Public Git repository
        │
        ├── Game source
        └── Docker image
                 │
                 ▼
          Kubernetes cluster
                 │
                 └── Private PVC
                       │
                       └── Cheatsheet content
```

The public website connects the game application with the study content running on the Kubernetes cluster.

The project is primarily a homelab/DevOps playground and is continuously developed and improved.


  <img width="724" height="517" alt="image" src="https://github.com/user-attachments/assets/7f9f4266-54d9-4a16-bcfa-f77af6c15a41" />
