# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,BOARD
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    vendor/motorola/sholest/proprietary/lib/libgps.so:obj/lib/libgps.so \
    vendor/motorola/sholest/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/motorola/sholest/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    vendor/motorola/sholest/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
    vendor/motorola/sholest/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    vendor/motorola/sholest/proprietary/lib/libril-moto-umts-1.so:obj/lib/libril-moto-umts-1.so \
    vendor/motorola/sholest/proprietary/lib/hw/gralloc.omap3.so:obj/lib/hw/gralloc.omap3.so \
    vendor/motorola/sholest/proprietary/lib/hw/lights.sholes.so:obj/lib/hw/lights.sholes.so \
    vendor/motorola/sholest/proprietary/lib/hw/sensors.sholes.so:obj/lib/hw/sensors.sholes.so

# All the blobs necessary 
# copy all files under the "proprietary" directory to system
PRODUCT_COPY_FILES += $(shell \
    find vendor/motorola/sholest/proprietary/ -type f \
    | sed -r 's/^(vendor\/motorola\/sholest\/proprietary)(.*)$$/\1\2:\/system\2/' \
    | tr '\n' ' ')
