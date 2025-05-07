#!/bin/bash

# Script to update copyright notices in all Java files
# Created by Phạm Lê Ngọc Sơn

find src -name "*.java" -type f -exec sed -i 's/\/\/  Copyright (C) 2011 Lucas Catabriga Rocha <catabriga90@gmail.com>/\/\/  Copyright (C) 2023 Phạm Lê Ngọc Sơn/g' {} \;

echo "Copyright notices updated successfully." 