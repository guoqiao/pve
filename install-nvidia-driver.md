#!/bin/bash

# which driver to install for your GPU:
# https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/

# my one is GT 710, Device PCI ID: 1281, supported by 470.xx driver.

```
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/470.182.03/NVIDIA-Linux-x86_64-470.182.03.run
```

run it as root, get this error:


	ERROR: The Nouveau kernel driver is currently in use by your system.  This driver is incompatible with the NVIDIA driver, and must be disabled before proceeding.  Please consult the NVIDIA driver README and your Linux distribution's documentation for details on how to correctly disable the Nouveau kernel driver.

PCIe Passthrough:

Enable VT-d for intel, AMD-v for AMD, or IOMMU
