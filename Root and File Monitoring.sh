#!/bin/bash

##Monitor hidden files, root executables, and see if changes are made, who made them, and when they were changed.

ls -a  ##Displays all hidden files so you may monitor them.

sudo grep sudo /var/log/secure  ##Pulls up the log that shows you all root executables. This includes when they were made, who made them, and what change was made.

