#!/bin/bash

clear

#######################
#  UPLOAD POPULATION  #
#######################

echo ---------------------------------------------------------------------------
echo Do you want to upload the population to TrenThesis mongo database? Y/y/yes
echo Mind that this will erase all the data that is already present in the db
echo ---------------------------------------------------------------------------

read upload

if [ "$upload" == "Y" ] || [ "$upload"  == "y" ] || [ $upload == "yes" ]; then

	echo ---------------------------------------
	echo Import locally ? Y/y/yes [Default = No]
	echo ---------------------------------------

	read local_import

	if [ "$local_import" == "Y" ] || [ "$local_import"  == "y" ] || [ $local_import == "yes" ]; then

		mongoimport --host localhost --port 27017 --db trenthesis --collection professors --drop --maintainInsertionOrder --file tools/test_populations/professors.json
		mongoimport --host localhost --port 27017 --db trenthesis --collection topics --drop --maintainInsertionOrder --file tools/test_populations/topics.json
		mongoimport --host localhost --port 27017 --db trenthesis --collection categories --drop --maintainInsertionOrder --file tools/test_populations/categories.json
		mongoimport --host localhost --port 27017 --db trenthesis --collection users --drop --maintainInsertionOrder --file tools/test_populations/users.json
		echo ">>> Local data upload completed"

	else

		echo -----------------------------------
		echo Insert the password of the database
		echo -----------------------------------

		read -s password
		mongoimport --host ds233895.mlab.com --port 33895 --username trenthesisDB --password $password --db trenthesis --collection professors --drop --maintainInsertionOrder --file tools/test_populations/professors.json
		mongoimport --host ds233895.mlab.com --port 33895 --username trenthesisDB --password $password --db trenthesis --collection topics --drop --maintainInsertionOrder --file tools/test_populations/topics.json
		mongoimport --host ds233895.mlab.com --port 33895 --username trenthesisDB --password $password --db trenthesis --collection categories --drop --maintainInsertionOrder --file tools/test_populations/categories.json
		mongoimport --host ds233895.mlab.com --port 33895 --username trenthesisDB --password $password --db trenthesis --collection users --drop --maintainInsertionOrder --file tools/test_populations/users.json
		echo ">>> Remote data upload completed"

	fi
fi
