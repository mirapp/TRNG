#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/Users/mirap/Vivado/neoTRNG3/neoTRNG_platform/export/neoTRNG_platform/neoTRNG_platform.xpfm
SYS_CONFIG = neoTRNG_platform
DOMAINS = standalone_domain
BIF_PATH = C:/Users/mirap/Vivado/neoTRNG3/neoTRNG3_system/Release/system.bif

BITSTREAM_PATH = C:/Users/mirap/Vivado/neoTRNG3/neoTRNG3/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf C:/Users/mirap/Vivado/neoTRNG3/neoTRNG3/Release/neoTRNG3.elf,ps7_cortexa9_0

#
# primary build targets
#

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 56886 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean

all: package


