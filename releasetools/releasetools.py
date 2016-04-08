# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
import common
import os
import sys

# Import Common releasetools
LOCAL_DIR = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
COMMON_RELEASETOOLS_DIR = os.path.abspath(os.path.join(LOCAL_DIR, '../../../device/samsung/msm8660-common/releasetools'))

# Add releasetools directory to python path
sys.path.append(COMMON_RELEASETOOLS_DIR)

from releasetools import *

"""Custom OTA commands for celox devices"""

def FullOTA_InstallEnd(info):
	info.script.Mount("/system")
	info.script.AppendExtra('ifelse(is_substring("SGH-T989", getprop("ro.product.device")) || is_substring("SGH-T989", getprop("ro.build.product")) || is_substring("hercules", getprop("ro.product.device")) || is_substring("hercules", getprop("ro.build.product")), run_program("/sbin/sh", "-c", "busybox cp /system/lib/hercules/* /system/lib/"));')
	info.script.AppendExtra('ifelse(is_substring("SGH-T989", getprop("ro.product.device")) || is_substring("SGH-T989", getprop("ro.build.product")) || is_substring("hercules", getprop("ro.product.device")) || is_substring("hercules", getprop("ro.build.product")), run_program("/sbin/sh", "-c", "busybox echo SGH-T989 > /system/variant.prop"));')
	info.script.AppendExtra('ifelse(is_substring("SGH-I727", getprop("ro.product.device")) || is_substring("SGH-I727", getprop("ro.build.product")) || is_substring("skyrocket", getprop("ro.product.device")) || is_substring("skyrocket", getprop("ro.build.product")), run_program("/sbin/sh", "-c", "busybox echo SGH-I727 > /system/variant.prop"));')
	info.script.AppendExtra('delete_recursive("/system/lib/hercules/");')
	info.script.Unmount("/system")
