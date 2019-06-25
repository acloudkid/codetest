# Los Angeles Weather Data

This is a docker container with a series of small scripts which will fetch weather data for Los Angeles, CA, from openweathermap.org every 60 seconds, and display it on a basic nginx website

## Getting Started

These instructions will get you a copy of the project up and running on your local mac for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
GIT
brew install git

DOCKER
brew install docker
```

### Installing

A step by step series of examples that tell you how to get a development env running

Install Docker

```
brew install docker
```

Install Git

```
brew install git
```

Clone this repository

```
git clone https://github.com/acloudkid/codetest.git
```

Navigate to the repository directory

```
cd codetest
```

Navigate to the repository directory

```
cd codetest
```

Build the docker image rpweather

```
docker build . -t rpweather:latest
```

Run the docker container using the provided script (This is required to start the cron service inside the container)

```
sh startcontainer.sh
```

Verify the container is running

```
docker ps
```

In a browswer, navigate to localhost:909

```
open chrome
```
```
localhost:909
```


### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Authors

* **Robert Perrin** 
