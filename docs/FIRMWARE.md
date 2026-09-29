# Firmware update network errors

Media import and firmware updates use different network paths. During import, the phone connects to the glasses' local access point. For firmware updates, the glasses join a router with Internet access.

The app's WLAN screen specifies a 5 GHz network with simple password authentication. A saved network name does not prove that the glasses currently have Internet access.

In the tested setup, a separate 5 GHz WPA2 SSID connected successfully. An authenticated HTTP proxy plus DNS-over-HTTPS then allowed the firmware download to start. The test does not isolate whether the original error was caused by DNS, the direct route, or another network condition.

Keenetic's [proxy-client documentation](https://support.keenetic.com/carrier/kn-1711/en/49443-proxy-client.html) recommends DoH/DoT for reliable name resolution with its proxy client. A successful proxy request from a computer does not by itself verify the glasses' route.

No router credentials, proxy addresses, SSIDs, device rules or personal network configuration are included here. This APK does not configure a proxy and does not bypass firmware validation.
