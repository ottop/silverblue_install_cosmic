#!/bin/sh

printf "Select an option:\n1) Install cosmic\n2) Uninstall cosmic\n\nYour choice: "

read operation

if [ $operation = '1' ]; then
	rpm-ostree install cosmic-app-library cosmic-applets cosmic-bg cosmic-comp cosmic-config-fedora cosmic-edit cosmic-files cosmic-greeter cosmic-icon-theme cosmic-idle cosmic-launcher cosmic-notifications cosmic-osd cosmic-panel cosmic-player cosmic-screenshot cosmic-session cosmic-settings cosmic-settings-daemon cosmic-store cosmic-term cosmic-wallpapers cosmic-workspaces initial-setup-gui-wayland-cosmic xdg-desktop-portal-cosmic
elif [ $operation = '2' ]; then
	rpm-ostree uninstall cosmic-app-library cosmic-applets cosmic-bg cosmic-comp cosmic-config-fedora cosmic-edit cosmic-files cosmic-greeter cosmic-icon-theme cosmic-idle cosmic-launcher cosmic-notifications cosmic-osd cosmic-panel cosmic-player cosmic-screenshot cosmic-session cosmic-settings cosmic-settings-daemon cosmic-store cosmic-term cosmic-wallpapers cosmic-workspaces initial-setup-gui-wayland-cosmic xdg-desktop-portal-cosmic
else
	echo "Invalid input"
	exec "$0" "$@"
fi
