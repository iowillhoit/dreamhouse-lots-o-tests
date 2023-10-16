#! /bin/bash

# From https://github.com/forcedotcom/cli/issues/2475

echo "Start $(date)"
echo ""

mkdir test-results-once-json

echo "sf apex run test --json --wait 15 --output-dir test-results/apex --result-format json"
sf apex run test --json --wait 15 --output-dir test-results/apex --result-format json > test-results-once-json/test-result.json

echo ""
echo "End $(date)"