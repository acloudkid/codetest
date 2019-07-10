#!/bin/python
from fabric import Connection
from invoke.context import Context
from fabric import task

@task
def build(cn):
    '''
    builds the docker container rpweather
    '''
    cn.run('docker build . -t rpweather:latest')

@task
def destroy(cn):
    '''
    removes the docker container rpweather
    '''
    cn.run('docker stop rpweather | true')
    cn.run('docker rm rpweather | true')

@task
def enter(cn):
    '''
    enter the running container
    '''
    cn.run('docker exec -ti rpweather /bin/bash')

@task
def run(cn):
    '''
    runs the container rpweather
    '''
    cn.run('sh startcontainer.sh')
