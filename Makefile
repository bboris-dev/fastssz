
.PHONY:
build-spec-tests:
	go run sszgen/*.go --path ./spectests/structs.go --include ./spectests/external,./spectests/external2

build-spec-tests-tree:
	go run sszgen/*.go --path ./spectests/structs.go --include ./spectests/external,./spectests/external2 --experimental

.PHONY:
get-spec-tests:
	./scripts/download-spec-tests.sh v1.1.0-alpha.4-pre2
