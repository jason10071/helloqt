QMAKE=qmake
QMAKE_ARGUMENTS=-r -spec linux-g++ "CONFIG+=release"

HELLO_QT_SRC_DIR=src/helloqt


all: BUILD_HELLO_QT COPY_BIN

# build
BUILD_HELLO_QT:
	cd ${HELLO_QT_SRC_DIR} && \
	${QMAKE} helloqt.pro ${QMAKE_ARGUMENTS} && \
	${MAKE}

COPY_BIN:
	test -f ${HELLO_QT_SRC_DIR}/helloqt && \
	mv ${HELLO_QT_SRC_DIR}/helloqt .

# clean
CLEAN_HELLO_QT:
	cd ${HELLO_QT_SRC_DIR} && \
	test -f Makefile && \
	${MAKE} clean && \
	rm -f Makefile || \
	true

clean: CLEAN_HELLO_QT

clean_bin:
	test -f helloqt && \
	rm -v helloqt




