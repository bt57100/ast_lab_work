#!/bin/bash


./node_modules/.bin/coffee src/server.coffee & ./node_modules/mocha/bin/mocha --require coffeescript/register test/* & killall node
