# director config



#PLATFORM=$(shell $(SRC)/systype.sh)
#include $(SRC)/Make.defines.$(PLATFORM)
#include $(SRC)/Make.readme


#SRC_ROOT=$(shell pwd)
#BIN=$(SRC_ROOT)/bin/
#APPS_SRC=$(SRC_ROOT)/apps
#KERNSLS_SRC=$(SRC_ROOT)/kernels

DIRS=cholesky fft lu radix


SUBDIRS=$(DIRS)

.PHONY:all $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
		$(MAKE) -C $@

#all	:
#	for i in $(DIRS); do \
#		(cd $$i && echo "making $$i" && $(MAKE) ) || exit 1; \
#	done

clean:
	for i in $(DIRS); do \
		(cd $$i && echo "cleaning $$i" && $(MAKE) clean) || exit 1; \
	done

install :
	for i in $(DIRS); do \
		(cd $$i && echo "install $$i" && $(MAKE) install) || exit 1; \
	done

github:
	make clean
	cd $(ROOT)/..
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master
