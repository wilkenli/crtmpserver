#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-MacOSX
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile.nb

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/2107059025/cliappprotocolhandler.o \
	${OBJECTDIR}/_ext/2107059025/admin.o \
	${OBJECTDIR}/_ext/2107059025/adminapplication.o \
	${OBJECTDIR}/_ext/2107059025/rtmpappprotocolhandler.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../common/dist/Release/GNU-MacOSX -lcommon -L../thelib/../Release/GNU-MacOSX -lthelib

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib

../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib: ../common/dist/Release/GNU-MacOSX/libcommon.dylib

../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib: ../thelib/../Release/GNU-MacOSX/libthelib.dylib

../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib: ${OBJECTFILES}
	${MKDIR} -p ../${CND_CONF}/${CND_PLATFORM}/applications/admin
	${LINK.cc} -dynamiclib -install_name libadmin.dylib -o ../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib -fPIC ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/2107059025/cliappprotocolhandler.o: ../../../../sources/applications/admin/src/cliappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2107059025
	${RM} $@.d
	$(COMPILE.cc) -O2 -DNET_KQUEUE -DOSX -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/admin/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/2107059025/cliappprotocolhandler.o ../../../../sources/applications/admin/src/cliappprotocolhandler.cpp

${OBJECTDIR}/_ext/2107059025/admin.o: ../../../../sources/applications/admin/src/admin.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2107059025
	${RM} $@.d
	$(COMPILE.cc) -O2 -DNET_KQUEUE -DOSX -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/admin/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/2107059025/admin.o ../../../../sources/applications/admin/src/admin.cpp

${OBJECTDIR}/_ext/2107059025/adminapplication.o: ../../../../sources/applications/admin/src/adminapplication.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2107059025
	${RM} $@.d
	$(COMPILE.cc) -O2 -DNET_KQUEUE -DOSX -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/admin/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/2107059025/adminapplication.o ../../../../sources/applications/admin/src/adminapplication.cpp

${OBJECTDIR}/_ext/2107059025/rtmpappprotocolhandler.o: ../../../../sources/applications/admin/src/rtmpappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2107059025
	${RM} $@.d
	$(COMPILE.cc) -O2 -DNET_KQUEUE -DOSX -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/admin/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/2107059025/rtmpappprotocolhandler.o ../../../../sources/applications/admin/src/rtmpappprotocolhandler.cpp

# Subprojects
.build-subprojects:
	cd ../common && ${MAKE}  -f Makefile.nb CONF=Release
	cd ../thelib && ${MAKE}  -f Makefile.nb CONF=Release

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ../${CND_CONF}/${CND_PLATFORM}/applications/admin/libadmin.dylib

# Subprojects
.clean-subprojects:
	cd ../common && ${MAKE}  -f Makefile.nb CONF=Release clean
	cd ../thelib && ${MAKE}  -f Makefile.nb CONF=Release clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
