useHeap.exe: dsa2proj2.o heap.o hash.o
	g++ -o useHeap.exe dsa2proj2.o heap.o hash.o

dsa2proj2.o: dsa2proj2.cpp
	g++ -c dsa2proj2.cpp

heap.o: heap.cpp heap.h
	g++ -c heap.cpp

hash.o: hash.cpp hash.h
	g++ -c hash.cpp

debug:
	g++ -g -o useHeapDebug.exe dsa2proj2.cpp heap.cpp hash.cpp

clean:
	rm -f *.exe *.o *.stackdump *~

backup:
	test -d backups || mkdir backups
	cp *.cpp backups
	cp *.h backups
	cp Makefile backups