#!/bin/bash
go test -v -coverprofile=c.out
go tool cover -func=c.out