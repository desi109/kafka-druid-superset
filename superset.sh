#!/bin/bash

cd ..
. venv/bin/activate
superset run -p 8088 --with-threads --reload --debugger & 

