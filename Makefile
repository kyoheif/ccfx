all:
	make -C ccfx
	make -C picosel
	make -C torq/pyeasytorq
	make -C utility/picosellib
	make -C ccfx/CCFinderXLib
clean:
	make -C ccfx clean
	make -C picosel clean
	make -C torq/pyeasytorq clean
	make -C utility/picosellib clean
	make -C ccfx/CCFinderXLib clean
