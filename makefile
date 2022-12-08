#Amélia Oliveira Freitas da Silva
#Início em 08/12/2022
#Última alteração em 08/12/2022
standalone:
	make lib
	cd src;make
preinstalled:
	cd src;make preinstalled;
lib:
	mkdir lib
	make libnet
	make libpcap
libnet:
	if [ ! -d lib ]; then\
		mkdir lib;\
	fi
	cd lib;\
	if [ ! -d libnet-1.2 ]; then\
		wget -O libnet.tar.gz https://github.com/libnet/libnet/releases/download/v1.2/libnet-1.2.tar.gz &&\
		tar xf libnet.tar.gz;\
	fi &&\
	cd libnet-1.2 &&\
	./configure && make
	#Libs na lib/libnet-1.2/src/.libs
libpcap:
	if [ ! -d lib ]; then\
		mkdir lib;\
	fi
	cd lib;\
	if [ ! -d libpcap-1.10.1 ]; then\
		wget -O libpcap.tar.gz https://www.tcpdump.org/release/libpcap-1.10.1.tar.gz &&\
		tar xf libpcap.tar.gz;\
	fi &&\
	cd libpcap-1.10.1&&\
	./configure && make
