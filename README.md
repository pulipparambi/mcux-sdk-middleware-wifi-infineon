# mcux-sdk-middleware-wifi-infineon

Integration of CYW55513 support in MCUXpresso SDK

## Example usage
1. Setup the MCUXpresso SDK following the instructions [here](https://mcuxpresso.nxp.com/mcuxsdk/latest/html/introduction/README.html)

2. Add the wifi_infineon submanifest and fetch libraries:
        cd ~/mcuxpresso-sdk/manifests/submanifests/middleware/
        wget https://github.com/pulipparambi/mcux-sdk-middleware-wifi-infineon/-/raw/main/submanifest/wifi_infineon.yml
        west update

3. Write a sample app for compiling and testing.
