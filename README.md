S/Y Curiosity IoT setup [![Build Status](https://travis-ci.com/meri-imperiumi/curiosity.svg?branch=master)](https://travis-ci.com/meri-imperiumi/curiosity)
=======================

This repository is for setting up the S/Y Curiosity onboard computer system.

## Development

For development there is a Docker image available. Run it with:

```bash
$ docker run --name curiosity -p 3000:3000 meriimperiumi/signalk-curiosity:latest
```

This should make the Signal K installation with Curiosity's configuration available at http://localhost:3000

## Deployment

Production deployment on ship network is done via Ansible. See the `ansible/curiosity.yml` playbook.
