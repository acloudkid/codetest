#!/bin/python
from fabric.api import *
from os import path
import subprocess
import os

@task
def build():
    '''
    builds the docker container rpweather
    '''
    local('docker build . -t rpweather:latest --name rpweather')

    local(cmd)
@task
def destroy():
    '''
    removes the docker container rpweather
    '''
    local('docker stop rpweather | true')
    local('docker rm rpweather | true')

@task
def enter():
    '''
    enter the running container
    '''
    local('docker exec -ti rpweather /bin/bash')

@task

def run():
    '''
    runs the container rpweather
    '''
    cmd = 'sh startcontainer.sh'
    
    local(cmd)
