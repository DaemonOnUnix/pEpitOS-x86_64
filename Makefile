ARCH=x86_64
TARGET=DEBUG

all:
	@$(MAKE) $(TARGET) -C arch/$(ARCH) -s
	@#@$(MAKE) clean -s

clean:
	@$(MAKE) clean -C arch/$(ARCH) -s