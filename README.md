S/Y Curiosity IoT setup [![Build Status](https://travis-ci.com/meri-imperiumi/curiosity.svg?branch=master)](https://travis-ci.com/meri-imperiumi/curiosity)
=======================

This repository is for setting up the S/Y Curiosity onboard computer system.

## Development

For development there is a Docker image available. Run it with:

```bash
$ docker run --rm --name curiosity -p 3000:3000 meriimperiumi/signalk-curiosity:latest
```

This should make the Signal K installation with Curiosity's configuration available at http://localhost:3000

If you want to access demo data, run with:

```bash
docker run --name curiosity -p 3000:3000 --rm --entrypoint /home/node/signalk/bin/signalk-server meriimperiumi/signalk-curiosity:latest --sample-nmea0183-data
```

## Deployment

Production deployment on ship network is done via Ansible using the [marinepi-provisioning](https://github.com/meri-imperiumi/marinepi-provisioning) repo.

Deploy with:

```bash
$ git clone git@github.com:meri-imperiumi/marinepi-provisioning.git
$ cd marinepi-provisioning
$ export ANSIBLE_ROLES_PATH=`pwd`/roles
$ ansible-playbook -i playbooks/meri-imperiumi/hosts playbooks/meri-imperiumi/curiosity.yml
```
