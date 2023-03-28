[![Publish Docker image](https://github.com/PenguinCloud/project-template/actions/workflows/docker-image.yml/badge.svg)](https://github.com/PenguinCloud/core/actions/workflows/docker-image.yml) [![version](https://img.shields.io/badge/version-0.0.0-yellow.svg)](https://semver.org) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/penguincloud/project-tempalte?sort=date&style=plastic)


# Project Overview
Our rock image is a combined Ubuntu MaaS and Hashicorp Terraform built into a single image designed to spin up MaaS and initiate Terraform runs.

# Why this image vs others
## Built in self testing and healing
All PTG builds have unit and dynamic tests as part of the build of their images, as well as during runtime to ensure the system keeps running as expected. If the system falls out of bounds of the test, the images have some self healing capabilities fix common minor problems.

Our image also allows you to quickly get servers provisioned and start building out your infrastructure in no time!

## Secured... even if the software isn'template
All PTG images under go a 8 stage security check to ensure not only is the PTG portion of the code secure, but to also identify and help remediate the underlying libraries and software security. 

Our containers are ran as non-root images, ensuring even more protection between your standard build.

## Updated As Much as you want
Our nightly images are built daily for updates from upstream sources. We will perform minor release updates at least monthly and major release updates as needed.

## Designed for air-gapped or for internet facing
All PTG images are designed to be ran inside of air gapped environments with no internet, allowing datacenters to use a local cache as well saving bandwidth.

## Active contribution and maintenance
PTG is a company with funding and full time contributors to ensure our images aren't stale.

## Scalable
ALl PTG images are designs to be micro-containers, ensuring easy verical and horizontal scaling is possible.

## PTG drinks it's own koolaid
PTG actively uses it's own images for everything so we can identify bugs which our automation misses.

## Beta testing
PTG relies on volunteer customers and community members to beta test images, ensuring our stable / production images are well baked and as bug free as possible solutions.

# Contributors
## PTG
Maintainer: creatorsemailhere@penguintech.group
General: info@penguintech.group

## community

* Insert list of community collaborators


# Resources
Documentation: ./docs/
Premium Support: https://support.penguintech.group 
Community Bugs / Issues: -/issues
