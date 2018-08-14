#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

vendor/k8s.io/code-generator/generate-groups.sh \
deepcopy \
qiniu-ava/checkpoint-operator/pkg/generated \
qiniu-ava/checkpoint-operator/pkg/apis \
ava:v1alpha1 \
--go-header-file "./tmp/codegen/boilerplate.go.txt"