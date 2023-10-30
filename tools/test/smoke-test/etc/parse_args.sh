#!/usr/bin/env false
#
# This file is part of AtomVM.
#
# Copyright 2023 Fred Dushin <fred@dushin.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0 OR LGPL-2.1-or-later
#

##
## This function is meant to be in-lined (sourced)
##

while getopts "e:c:p:b:oh" opt; do
    case "${opt}" in
        h)
            help=1
            ;;
        e)
            ESP32_ESPTOOL=${OPTARG}
            ;;
        c)
            ESP32_CHIP=${OPTARG}
            ;;
        p)
            ESP32_PORT=${OPTARG}
            ;;
        b)
            ESP32_BAUD=${OPTARG}
            ;;
        o)
            ESP32_OFFSET=${OPTARG}
            ;;
        *)
            syntax
    esac
done
shift $((OPTIND-1))