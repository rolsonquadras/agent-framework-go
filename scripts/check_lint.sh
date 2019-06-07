#!/bin/bash
#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DOCKER_CMD=docker

echo "GolangCI Linter :: Started"

${DOCKER_CMD} run --rm -e GOPROXY=${GOPROXY} -v $(pwd):/goapp -e RUN=1 -e REPO=github.com/trustbloc/agent-framework-go golangci/build-runner goenvbuild

echo "GolangCI Linter :: Completed"