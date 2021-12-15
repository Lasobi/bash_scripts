#!/bin/bash

pactl load-module module-remap-sink sink_name=music_in master=alsa_output.usb-Mayflower_Electronics_ARC_AMP_DAC_ARC_AMP_DAC_FFFFFFFEFFFF-00.analog-stereo channels=2 master_channel_map=front-left,front-right channel_map=front-left,front-right remix=no

pactl load-module module-remap-sink sink_name=voice_in master=alsa_output.usb-Mayflower_Electronics_ARC_AMP_DAC_ARC_AMP_DAC_FFFFFFFEFFFF-00.analog-stereo channels=2 master_channel_map=front-left,front-right channel_map=front-left,front-right remix=no

pactl load-module module-remap-sink sink_name=other_in master=alsa_output.usb-Mayflower_Electronics_ARC_AMP_DAC_ARC_AMP_DAC_FFFFFFFEFFFF-00.analog-stereo channels=2 master_channel_map=front-left,front-right channel_map=front-left,front-right remix=no
