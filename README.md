# Marcus' Known Docker

This is a composer installable docker instance for your Known install.

It is designed to _quickly_ get you up and running with a development environment for playing around with Known.

It creates a docker install wrapping your current known instance, exposing a web server on `localhost:8088`, and using a separate database image.

## Installation

* Download and install docker
* Add this docker image to known using composer `composer require mapkyca/mapkyca-known-docker --dev`

This will create a docker environment in `/vendor/mapkyca/mapkyca-known-docker/`

## Usage

* cd `/vendor/mapkyca/mapkyca-known-docker/`
* `docker-compose up`
* Point your browser at `localhost:8088` and install in the usual way

## Data storage 

Files you upload will be stored in your Known install's "Uploads" directory.

Your database will be stored in `/vendor/mapkyca/mapkyca-known-docker/db/`. 

**IMPORTANT**

This is designed to be used for temporary development, not production. I make no promises as to what happens to the database directory when doing composer updates.

If you care, back this up regularly!

## See
* Author: Marcus Povey https://www.marcus-povey.co.uk

