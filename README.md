# CalliopeLinuxSetup
Bits and pieces to make Calliope work with Linux

Calliope is a micro controller used in school settings in Germany. Programming is done mostly in block languages 
in web based editors. These generate Hex code, which first needs to be downloaded to a local device and then has 
to be transfered via USB to the Calliope. For details see https://calliope.cc/ .

Collected here are some bits and pieces to create a setup for this that streamlines this process for Linux. 

(Simple) Troubleshooting:
- In case the drive on the Calliope reports the label "MAINTENANCE" the firmware on the device needs to be reinstalled. Details can be found right at the end of the FAQ: https://calliope.cc/en/faq
  Current link to the firmware is https://github.com/calliope-mini/production-test/releases/download/bootloader-r1.0/kl26z_calliope_if_crc.bin
