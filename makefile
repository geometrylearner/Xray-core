# Variables
GO := /usr/local/go/bin/go
FLAGS := -trimpath -ldflags "-s -w -buildid="
TARGET := xray
SOURCES := ./main

.PHONY: build clean

build:
	CGO_ENABLED=0 $(GO) build -o $(TARGET) $(FLAGS) $(SOURCES)

clean:
	rm -f $(TARGET)
