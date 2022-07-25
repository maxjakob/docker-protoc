#!/bin/bash -e

BUILDS=("protoc-all" "protoc" "prototool" "grpc-cli" "gen-grpc-gateway")
DOCKER_REPO=${DOCKER_REPO}
NAMESPACE=${NAMESPACE:-namely}
CONTAINER=${DOCKER_REPO}${NAMESPACE}
LATEST=${1:false}

GO_VERSION=${GO_VERSION:-1.17}
GRPC_VERSION=${GRPC_VERSION:-1.47}
GRPC_JAVA_VERSION=${GRPC_JAVA_VERSION:-1.47}
GRPC_WEB_VERSION=${GRPC_WEB_VERSION:-1.3.1}
GRPC_GATEWAY_VERSION=${GRPC_GATEWAY_VERSION:-v2.0.1}
UBER_PROTOTOOL_VERSION=${UBER_PROTOTOOL_VERSION:-1.10.0}
SCALA_PB_VERSION=${SCALA_PB_VERSION:-0.11.0}
NODE_VERSION=${NODE_VERSION:-14}
NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION=${NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION:-5.3.2}
NODE_GRPC_TOOLS_VERSION=${NODE_GRPC_TOOLS_VERSION:-1.11.2}
NODE_PROTOC_GEN_GRPC_WEB_VERSION=${NODE_PROTOC_GEN_GRPC_WEB_VERSION:-1.4.0}
TS_PROTO_VERSION=${TS_PROTO_VERSION:1.117.0}
GO_ENVOYPROXY_PGV_VERSION=${GO_ENVOYPROXY_PGV_VERSION:-0.6.7}
GO_MWITKOW_GPV_VERSION=${GO_MWITKOW_GPV_VERSION:-0.3.2}
BUILD_VERSION="${BUILD_VERSION:-local}"
VERSION="${VERSION:-${GRPC_VERSION}_${BUILD_VERSION}}"
