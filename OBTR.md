# ESP32H2 OpenThread Border Router

- Install ESP-IDF prerequisites in Fedora:

```shell
sudo dnf install git wget flex bison gperf python3 cmake ninja-build ccache dfu-util libusbx
```

- Install ESP-IDF VSCode extension
- Perform the extension setup (I selected v5.5-rc1)
- Create new project
  - Select ESP32-H2 via builtin USB-JTAG
  - Component directory: empty
  - Template: ESP-IDF and ot_rcp
- flash and run!

## Software setup

- OpenThread Border Router (from nixpkgs PR until it is merged), no need for the web UI
- Matter Server (nixos service)
- Setup HomeAssistant (I had to restart the podman container to enable IPv6) - follow the instruction thoroughly, especially the settings -> troubleshooting -> send credentials..

