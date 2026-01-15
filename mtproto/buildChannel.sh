#!/bin/sh

SRC_DIR=.
DST_DIR=.

protoc -I=$SRC_DIR --proto_path=. --go_out=$DST_DIR --go-grpc_out=require_unimplemented_servers=false:$DST_DIR $SRC_DIR/schema_channel.tl.sync.proto

gofmt -w *.go