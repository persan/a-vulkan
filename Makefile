

generate:src/gen/vulkan-vulkan_h.ads


src/gen/vulkan-vulkan_h.ads:Makefile vulkan.sed# IGNORE

	@-rm -rf gen src/gen ;
#	@-rm -rf src/gen ;
	@mkdir -p gen src/gen

	@echo "#include <vulkan.h>" >gen/gen.cpp
	@cd gen; g++ -c gen.cpp -I ../../Vulkan-Docs/src/vulkan -fdump-ada-spec -fada-spec-parent=vulkan  -C
	@sed -f vulkan.sed <gen/vulkan-vulkan_h.ads >src/gen/vulkan-vulkan_h.ads
	gprbuild -p -P vulkan
all:
compile:
test:
clean:
install: