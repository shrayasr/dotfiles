#!/usr/bin/python

import sys
from datetime import datetime
from datetime import timedelta

if len(sys.argv) < 3:
    exit("Usage: %s <date in DDMMYYYY format> <no. of days to add>" % sys.argv[0])

date_str = sys.argv[1]
no_of_days = int(sys.argv[2])

date = datetime.strptime(date_str, "%d%m%Y")
new_date = date + timedelta(days=no_of_days)

print new_date.strftime("%d-%m-%Y")
