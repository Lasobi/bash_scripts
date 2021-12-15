#!/bin/bash

pactl load-module module-null-sink sink_name="music_virt_in" sink_properties=device.description="music_virt_in"

pactl load-module module-loopback latency_msec=1 source=music_virt_in.monitor sink=alsa_output.usb-Schiit_Audio_Schiit_Modi_3-00.analog-stereo

pactl load-module module-null-sink sink_name="voice_virt_in" sink_properties=device.description="voice_virt_in"

pactl load-module module-loopback latency_msec=1 source=voice_virt_in.monitor sink=alsa_output.usb-Schiit_Audio_Schiit_Modi_3-00.analog-stereo

pactl load-module module-null-sink sink_name="other_virt_in" sink_properties=device.description="other_virt_in"

pactl load-module module-loopback latency_msec=1 source=other_virt_in.monitor sink=alsa_output.usb-Schiit_Audio_Schiit_Modi_3-00.analog-stereo
