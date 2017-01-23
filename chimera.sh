#!/bin/bash

while IFS='' read -r build || [[ -n "$build" ]]; do
	while IFS='' read -r invo || [[ -n "$invo" ]]; do
		printf "debug: $invo\n"
		printf "debug: $build\n"
		export build=$build
		printf "$invo" | xargs sh -c '$build "$@"' argv0
	done < "$1"
done < "$2"
