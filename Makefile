ARCH=x86_64
TARGET=NODEBUG

all:
	@$(MAKE) $(TARGET) -C src -s
	@#@$(MAKE) clean -s

clean:
	@$(MAKE) clean -C src -s