#!/usr/bin/env bash
set -e
device_arg=""
command_args=""

# Check if podman or docker are available
if command -v podman &> /dev/null; then
    container_cmd="sudo podman"
elif command -v docker &> /dev/null; then
    container_cmd="docker"
else
    echo "Error: Neither podman nor docker found. Please install one of them."
    exit 1
fi

# Parse arguments to find --device
while [[ $# -gt 0 ]]; do
    case $1 in
        --device)
            device_arg="--device=$2"
            command_args="$command_args $1 $2"
            shift 2
            ;;
        --device=*)
            device_arg="$1"
            command_args="$command_args $1"
            shift
            ;;
        *)
            command_args="$command_args $1"
            shift
            ;;
    esac
done

$container_cmd run --rm --privileged --network host -v "${PWD}/projects":/config $device_arg -it ghcr.io/esphome/esphome $command_args $device_arg
