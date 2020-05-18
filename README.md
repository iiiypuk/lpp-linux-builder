**This tool will let you generate a vpk homebrew with lpp-vita core.**
[![asciicast](https://asciinema.org/a/rtGJOdY9LXNMkcrWIMa3taT8D.svg)](https://asciinema.org/a/rtGJOdY9LXNMkcrWIMa3taT8D)

## How to use
- Place `index.lua` file in build folder.
- Place the eboot you prefer (unsafe or safe) in build folder and rename it as eboot.bin
- Customize images in build/sce_sys and build/sce_sys/livearea/contents with your own images (make sure to compress them with pngquant).
- Launch `build.sh` and follow the onscreen instructions.

## Tips
You can place in build folder whatever file you want. Such files will be usable in your homebrew in app0 filesystem.
For example if you place an image in build/image.jpg, it will be usable in your script as app0:/image.jpg.

## Safe mode limitations

When using the safe eboot.bin for your application, you'll have a few limitations:

- Cannot open files from paths different than `ux0:/data` or `app0:/`.
- Cannot intercept `SCE_CTRL_VOLUP`, `SCE_CTRL_VOLDOWN`, `SCE_CTRL_POWER` buttons.
- Cannot use `Controls.headsetStatus` function.
