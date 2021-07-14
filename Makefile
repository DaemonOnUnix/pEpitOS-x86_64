ARCH=x86_64
TARGET=NODEBUG

all:
	@$(MAKE) $(TARGET) -C arch/$(ARCH) -s
	@#@$(MAKE) clean -s

clean:
	@$(MAKE) clean -C arch/$(ARCH) -s