# for loop with 1000 interations

CLASS_PATH='force-app/main/default/classes'

for i in {1..3}; do
    # Copy the class file, replacing the class name
    /bin/cp "$CLASS_PATH/GeocodingService.cls" "$CLASS_PATH/GeocodingService$i.cls"
    sed -i "" "s/GeocodingService/GeocodingService$i/g" "$CLASS_PATH/GeocodingService$i.cls"

    # Copy class  meta file
    /bin/cp "$CLASS_PATH/GeocodingService.cls-meta.xml" "$CLASS_PATH/GeocodingService$i.cls-meta.xml"

    # Now the tests
    /bin/cp "$CLASS_PATH/GeocodingServiceTest.cls" "$CLASS_PATH/GeocodingService$iTest.cls"
    sed -i "" "s/GeocodingService/GeocodingService$i/g" "$CLASS_PATH/GeocodingService$iTest.cls"

    # Do the same for the test meta file
    /bin/cp "$CLASS_PATH/GeocodingServiceTest.cls-meta.xml" "$CLASS_PATH/GeocodingService$iTest.cls-meta.xml"
done