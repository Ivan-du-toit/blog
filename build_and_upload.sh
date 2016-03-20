#!/usr/bin/env bash

hugo
aws s3 sync public/ s3://blog.tryfinally.co.za/ --region us-east-1
