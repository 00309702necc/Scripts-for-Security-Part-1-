#!/bin/bash

##Write script to detect changes to a specific directory.  Such as changes to /var/log or /etc/ think about using a diff here, or a hash.

md5sum /var/log > varlog.check.md5  ##Finds the checksum of the directory and outputs it to an md5 file which we will use to compare to see if there has been any changes.
diff varlog.md5 varlog.check.md5

md5sum /etc/ > etc.check.md5
diff etc.md5 etc.check.md5

##This will compare the checksum of the directories. Keep in mind that you must now use the new checksum to continue to monitor the directories for changes in the future.

