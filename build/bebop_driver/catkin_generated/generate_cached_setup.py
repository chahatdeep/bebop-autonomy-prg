# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
<<<<<<< HEAD
    for workspace in "/home/chahatdeep/bebop_ws/devel;/opt/ros/kinetic".split(';'):
=======
    for workspace in "/home/dronelaptop/bebop_ws/devel;/opt/ros/kinetic".split(';'):
>>>>>>> f834c4515e8cc313d37640e4cacaaf3de5c3f16c
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

<<<<<<< HEAD
code = generate_environment_script('/home/chahatdeep/bebop_ws/devel/.private/bebop_driver/env.sh')

output_filename = '/home/chahatdeep/bebop_ws/build/bebop_driver/catkin_generated/setup_cached.sh'
=======
code = generate_environment_script('/home/dronelaptop/bebop_ws/devel/.private/bebop_driver/env.sh')

output_filename = '/home/dronelaptop/bebop_ws/build/bebop_driver/catkin_generated/setup_cached.sh'
>>>>>>> f834c4515e8cc313d37640e4cacaaf3de5c3f16c
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
