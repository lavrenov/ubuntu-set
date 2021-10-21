echo "0" > /sys/module/snd_hda_intel/parameters/power_save
echo "options snd_hda_intel power_save=0" > /etc/modprobe.d/audio_disable_powersave.conf