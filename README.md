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

## My devices

- entertainment hub: Shelly 2 to control and monitor the power of the HTPC and TV
- interruttore-camera: shelly 1 with decoupled switch to control both ceiling and bedside zigbee lights via home asisstant scenes with fallback to simple switch on missing connection

### Presence and Air Quality sensors

[ESP32-H2-DevKitM-1](https://espressif-docs.readthedocs-hosted.com/projects/esp-dev-kits/en/latest/esp32h2/esp32-h2-devkitm-1/user_guide.html)-based sensors with

- temperature and humidity sensor (BME280)
- CO2/VOC air quality sensor (CCS811)
- light sensor (BH1750)
- motion sensor (GPIO PIR)
- presence sensor (LD2410)

There will be one per room:

- sensori-camera
- sensori-salotto
