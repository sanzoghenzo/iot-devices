# ESPHome Configuration for my home IoT devices

ESP32H2 OpenThread devices + Shelly unlocked devices

## Usage

This uses the esphome docker image to avoid installing esphome on your system.

Put the config file in the `projects` directory, then run

```
./esp.sh run <config-file.yaml>
```

for an OTA of an existing device.

> **NOTE**: the config file path should be relative to the `projects` directory.

For a new device, attach it to the USB and use

```
./esp.sh run <config-file.yaml> --device <device port>
```

The port will be most likely `/dev/ttyACM0`.
