#! /bin/bash

# From https://github.com/forcedotcom/cli/issues/2475

testsuites=(
    TestSuiteDreamhouse
    TestSuite1
    TestSuite2
    TestSuite3
    TestSuite4
    TestSuite5
    TestSuite6
    TestSuite7
    TestSuite8
    TestSuite9
    TestSuite10
    TestSuite11
    TestSuite12
    TestSuite13
    TestSuite14
    TestSuite15
    TestSuite16
    TestSuite17
    TestSuite18
    TestSuite19
    TestSuite20
) # fill in the test suite names

echo "Start $(date)"
echo ""

echo "The following test suites will be executed:"
for value in "${testsuites[@]}"
do
  echo "$value"
done

mkdir test-results-json
for value in "${testsuites[@]}"
do
  echo ""
  echo "sf apex run test --json --suite-names $value --wait 15 --output-dir test-results/apex --result-format json"
  sf apex run test --json --suite-names $value --wait 15 --output-dir test-results/apex --result-format json > test-results-json/$value.json
done

echo ""
echo "End $(date)"