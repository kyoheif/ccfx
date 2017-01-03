DEFS = -DOS_UBUNTU -DLITTLE_ENDIAN -DCXLM_NO_ENC -DCODE_CONVERSION_SUPPORT -DWSTRING_CONVERSION_SUPPORT -DREQUIRE_RNR -DBUILD_PICOSELLIB

OPTS = -O2 -fpermissive -fPIC -I/usr/lib/jvm/java-9-openjdk-amd64/include/ -I/usr/lib/jvm/java-9-openjdk-amd64/include/linux

LIBS = -licule -licutu -licuio -licuuc -liculx -licudata -licui18n -lboost_thread -lboost_system

OBJS = picosel.o

CC = g++

../../ubuntu32/libpicosellib.so: $(OBJS)
	$(CC) $(LIBS) -shared -o $@ $(OBJS)

.cpp.o:
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

picosel.o: ../../picosel/picosel.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

clean:
	@rm -f *.o

.PHONY : clean

