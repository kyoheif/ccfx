DEFS = -DOS_UBUNTU -DLITTLE_ENDIAN -DCXLM_NO_ENC -DCODE_CONVERSION_SUPPORT -DWSTRING_CONVERSION_SUPPORT -DREQUIRE_RNR

OPTS = -O2 -fpermissive -fPIC -I/usr/lib/jvm/java-9-openjdk-amd64/include/ -I/usr/lib/jvm/java-9-openjdk-amd64/include/linux

LIBS = -licule -licutu -licuio -licuuc -liculx -licudata -licui18n -lboost_thread -lboost_system

OBJS = CCFinderXLib.o unportable.o base64encoder.o utf8support.o ccfxcommon.o ccfxconstants.o

CC = g++

../../ubuntu32/lib_CCFinderXLib.so: $(OBJS)
	$(CC) $(LIBS) -shared -o $@ $(OBJS)

CCFinderXLib.o: CCFinderXLib.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

unportable.o: ../../common/unportable.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

base64encoder.o: ../../common/base64encoder.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

utf8support.o: ../../common/utf8support.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

ccfxcommon.o: ../ccfxcommon.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

ccfxconstants.o: ../ccfxconstants.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

clean:
	@rm -f *.o

.PHONY : clean

