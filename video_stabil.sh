#!/bin/bash

#Parameter: ~PictureSettingsVideoStabilizationModeMode
#Details: Video stabilization mode
#Type: int_t
#0: Video flat on roll and pitch
#1: Video flat on pitch only
#2: Video flat on roll only
#3: Video follows drone angles (No video Stabilization)

id=3

rosrun dynamic_reconfigure dynparam set /bebop/bebop_driver PictureSettingsVideoStabilizationModeMode $id
