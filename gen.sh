#!/usr/bin/env bash

cd api
protoc --plugin=protoc-gen-wwttr=../protoc-gen-wwttr --dart_out=../lib/api/ --wwttr_out=../lib/api/ *.proto
