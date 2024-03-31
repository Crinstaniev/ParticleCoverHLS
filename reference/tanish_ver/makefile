GCC=g++
CLFAGS=-fprofile-arcs -ftest-coverage -g -Wall -fPIC

patchmaker:
	$(GCC) $(CFLAGS) -o patchmaker patchmaker.cpp

.PHONY: patchmaker

clean:
	rm -f patchmaker

.PHONY: clean