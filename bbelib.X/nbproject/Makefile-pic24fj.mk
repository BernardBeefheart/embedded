#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic24fj.mk)" "nbproject/Makefile-local-pic24fj.mk"
include nbproject/Makefile-local-pic24fj.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic24fj
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../bbclib/src/bb_printf.c ../../bbclib/src/uart-foo.c ../../bbclib/structures/rbuffer-add-line.c ../../bbclib/structures/rbuffer-get-line.c uart/uart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/888981367/bb_printf.o ${OBJECTDIR}/_ext/888981367/uart-foo.o ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o ${OBJECTDIR}/uart/uart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/888981367/bb_printf.o.d ${OBJECTDIR}/_ext/888981367/uart-foo.o.d ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d ${OBJECTDIR}/uart/uart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/888981367/bb_printf.o ${OBJECTDIR}/_ext/888981367/uart-foo.o ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o ${OBJECTDIR}/uart/uart.o

# Source Files
SOURCEFILES=../../bbclib/src/bb_printf.c ../../bbclib/src/uart-foo.c ../../bbclib/structures/rbuffer-add-line.c ../../bbclib/structures/rbuffer-get-line.c uart/uart.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic24fj.mk dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=generic-16bit
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/888981367/bb_printf.o: ../../bbclib/src/bb_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/888981367 
	@${RM} ${OBJECTDIR}/_ext/888981367/bb_printf.o.d 
	@${RM} ${OBJECTDIR}/_ext/888981367/bb_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/src/bb_printf.c  -o ${OBJECTDIR}/_ext/888981367/bb_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/888981367/bb_printf.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/888981367/bb_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/888981367/uart-foo.o: ../../bbclib/src/uart-foo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/888981367 
	@${RM} ${OBJECTDIR}/_ext/888981367/uart-foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/888981367/uart-foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/src/uart-foo.c  -o ${OBJECTDIR}/_ext/888981367/uart-foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/888981367/uart-foo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/888981367/uart-foo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o: ../../bbclib/structures/rbuffer-add-line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/426894227 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/structures/rbuffer-add-line.c  -o ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o: ../../bbclib/structures/rbuffer-get-line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/426894227 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/structures/rbuffer-get-line.c  -o ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart/uart.o: uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/uart 
	@${RM} ${OBJECTDIR}/uart/uart.o.d 
	@${RM} ${OBJECTDIR}/uart/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart/uart.c  -o ${OBJECTDIR}/uart/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart/uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/uart/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/888981367/bb_printf.o: ../../bbclib/src/bb_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/888981367 
	@${RM} ${OBJECTDIR}/_ext/888981367/bb_printf.o.d 
	@${RM} ${OBJECTDIR}/_ext/888981367/bb_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/src/bb_printf.c  -o ${OBJECTDIR}/_ext/888981367/bb_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/888981367/bb_printf.o.d"        -g -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/888981367/bb_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/888981367/uart-foo.o: ../../bbclib/src/uart-foo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/888981367 
	@${RM} ${OBJECTDIR}/_ext/888981367/uart-foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/888981367/uart-foo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/src/uart-foo.c  -o ${OBJECTDIR}/_ext/888981367/uart-foo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/888981367/uart-foo.o.d"        -g -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/888981367/uart-foo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o: ../../bbclib/structures/rbuffer-add-line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/426894227 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/structures/rbuffer-add-line.c  -o ${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d"        -g -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/426894227/rbuffer-add-line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o: ../../bbclib/structures/rbuffer-get-line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/426894227 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d 
	@${RM} ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../bbclib/structures/rbuffer-get-line.c  -o ${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d"        -g -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/_ext/426894227/rbuffer-get-line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart/uart.o: uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/uart 
	@${RM} ${OBJECTDIR}/uart/uart.o.d 
	@${RM} ${OBJECTDIR}/uart/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart/uart.c  -o ${OBJECTDIR}/uart/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart/uart.o.d"        -g -omf=elf -save-temps=obj -O0 -I"uart" -I"../../bbclib" -I"/opt/microchip/xc16/v1.22/support/PIC24F/h" -D__PIC24FJ128GA010__ -msmart-io=1 -Wall -msfr-warn=off -Wextra -pedantic
	@${FIXDEPS} "${OBJECTDIR}/uart/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/bbelib.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic24fj
	${RM} -r dist/pic24fj

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
