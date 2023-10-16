# for loop with 1000 interations

CLASS_PATH='force-app/main/default/classes'

for i in {1..100}; do
    # Copy the class file, replacing the class name
    /bin/cp "$CLASS_PATH/PropertyController.cls" "$CLASS_PATH/PropertyController$i.cls"
    sed -i "" "s/PropertyController/PropertyController$i/g" "$CLASS_PATH/PropertyController$i.cls"

    # Do the same for the meta file
    /bin/cp "$CLASS_PATH/PropertyController.cls-meta.xml" "$CLASS_PATH/PropertyController$i.cls-meta.xml"
    sed -i "" "s/PropertyController/PropertyController$i/g" "$CLASS_PATH/PropertyController$i.cls-meta.xml"

    # Now the tests
    /bin/cp "$CLASS_PATH/TestPropertyController.cls" "$CLASS_PATH/TestPropertyController$i.cls"
    sed -i "" "s/PropertyController/PropertyController$i/g" "$CLASS_PATH/TestPropertyController$i.cls"

    # Do the same for the test meta file
    /bin/cp "$CLASS_PATH/TestPropertyController.cls-meta.xml" "$CLASS_PATH/TestPropertyController$i.cls-meta.xml"
done