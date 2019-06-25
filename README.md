# Los Angeles Weather Data

The included script just_weather.sh will achieve the objectives, but the fun way is as followed:

This will build a docker container with a series of small scripts which will fetch weather data for Los Angeles, CA, from openweathermap.org every 60 seconds, and display it on a basic nginx website

## Getting Started

These instructions will get you a copy of the project up and running on your local mac for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them - this guide is designed for MacOS

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


### Methodology

```
I decided to execute the objectives using a docker container running simple shell scripts to retrieve the weather data for Los Angeles.  I thought it would be neat to at least utilize docker, and then keep the weather data up-to-date using a cron schedule.  
```

### Improvements Needed
```
1.) Inject API key from key management
2.) Finish fabric script for operating the docker containers 
3.) Logging and validation
4.) Write the script in python and operating the frequency without cron
```

### Other ideas
```
I thought about just using an AWS lambda function to push the data to a mongo DB, then using S3 for a static web service displaying the upated weather data for Los Angeles - but figired I would make it locally usable.
```

## Authors

* **Robert Perrin** 
