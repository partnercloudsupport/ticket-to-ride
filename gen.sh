#!/usr/bin/env bash

protoc --plugin=protoc-gen-wwttr=./protoc-gen-wwttr --dart_out=lib/ --wwttr_out=lib/ api/*.proto
