# Description (module name Parthshiv_Payment)
This module is a Custom Payment module for Magento 2.3.3 with Braintree payment API for Credit Card Payment. I have used Functional Testing to test the module functionality covered by Magento Functional test. Payment method is configured and ready for use in the provided Docker container. For that I've added host directly to docker container. Created additional Docker container for running test without any installation on any machine.

# Prerequisites

1. docker-desktop (Mac & Windows)
2. Make sure Docker has 4GB of RAM available. Click docker-desktop->preferences->advanced move slider to 4GB

# Running the project

- In the root project: run `docker-compose up` (This will take a several minutes)
- Go to a browser and open `http://localhost`

# (If needed) Admin Panel Credentials

- admin panel: `http://localhost/admin`
- admin user: `admin`
- admin password `admin123`

# (If needed) Database Access

- Download your favourite SQL database software
- dbname: `magento`
- username: `root`
- password: `password`

# Functional Testing of Payment module
Type below CLI command(try to run this command in GIT bash at project root) to run the Test: (check the Video to see how functional test runs)
- docker exec -ti magento sh -c 'php bin/magento setup:store-config:set --base-url="http://magento.local/" && vendor/bin/mftf build:project && vendor/bin/mftf run:test CreditCardOnCheckoutTest && php bin/magento setup:store-config:set --base-url="http://127.0.0.1/"'

Video URL: https://youtu.be/Xe3VB39ALWg

[![Watch the video](https://img.youtube.com/vi/Xe3VB39ALWg/0.jpg)](https://youtu.be/Xe3VB39ALWg)
