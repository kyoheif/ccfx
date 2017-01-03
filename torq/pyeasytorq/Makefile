DEFS = -DOS_UBUNTU -DLITTLE_ENDIAN -DCXLM_NO_ENC -DCODE_CONVERSION_SUPPORT -DWSTRING_CONVERSION_SUPPORT -DREQUIRE_RNR

OPTS = -O2 -fpermissive -fPIC -I/usr/include/python2.7/

LIBS = -licule -licutu -licuio -licuuc -liculx -licudata -licui18n -lboost_thread -lboost_system

OBJS = easytorq.o interpreter.o pyeasytorq.o texttoken.o torqcommon.o unportable.o utf8support.o

CC = g++

../../ubuntu32/scripts/easytorq.so: $(OBJS)
	$(CC) $(OPTS) -shared -o $@ $(OBJS) $(LIBS)

.cpp.o:
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

easytorq.o: ../easytorq/easytorq.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

interpreter.o: ../interpreter.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

texttoken.o: ../texttoken.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

torqcommon.o: ../torqcommon.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

torqcommon.o: ../torqcommon.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

unportable.o: ../../common/unportable.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

utf8support.o: ../../common/utf8support.cpp
	$(CC) $(DEFS) $(OPTS) -c $< -o $@

clean:
	@rm -f *.o

.PHONY : clean

