#!/bin/bash
# Copies python files into sopel modules directory... pretty horrible actually
# install.sh - shell script to copy files to sopel runtime directory
# 
# Copyright (c) 2015,2016 Casey Bartlett <caseytb@bu.edu>
# 
# See LICENSE for terms of usage, modification and redistribution.

# Copies python files into sopel modules directory
# should use pip or setup.py
sopel_dir=~/.sopel/knifeclub_modules

if [ -d $sopel_dir ]
then
	cp extract_blade_info.py $sopel_dir
	cp ddg.py $sopel_dir
	cp bhq_query.py $sopel_dir
	cp bhq_inventory_items.py $sopel_dir
	cp bhq_inventory_database.py $sopel_dir
	cp cat_facts.py $sopel_dir
	cp todays_blade.py $sopel_dir
	cp cat_facts.txt $sopel_dir
	# remove the python object files
	rm $sopel_dir/{extract_blade_info,ddg,bhq_query,cat_facts,bhq_inventory_database,bhq_inventory_items}.pyc
	rm $sopel_dir/{todays_blade}.pyc
fi
