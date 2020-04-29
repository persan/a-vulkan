all:test

compile:generate
	gprbuild -j0 -p -P vulkan.gpr

.PHONY : test
test:compile

install:

clean:
	rm -rf .obj lib .gen


generate : src/gen/vulkan-vulkan_h.ads # IGNORE

src/gen/vulkan-vulkan_h.ads : Makefile  $(wildcard sed/*.sed) $(wildcard /usr/include/vulkan/*.h)# IGNORE

	@-rm -rf .gen src/gen
	@mkdir -p .gen src/gen
	-cd .gen; for i in /usr/include/vulkan/*.h; do ln -s $$i ; done
	-cd .gen; for i in *.h; do g++ -c $$i -fdump-ada-spec -fada-spec-parent=Vulkan.Low_Level  -C >/dev/null 2>&1 ; done
	cd .gen;for i in *.h ; do cp  vulkan-low_level-`echo $$i | sed "s-\.-_-"`.ads ${CURDIR}/src/gen ; done
	cd src/gen; rm vulkan-low_level-vulkan_android_h.ads \
                   vulkan-low_level-vulkan_macos_h.ads \
                   vulkan-low_level-vulkan_win32_h.ads \
                   vulkan-low_level-vk_platform_h.ads \
                   vulkan-low_level-vk_sdk_platform_h.ads
                   
	@sed -i -f sed/all.sed  src/gen/*.ads
	for src in sed/vulkan*.sed; do tgt=`echo $${src} | sed "s-.sed-.ads-"`; tgt=`basename $${tgt}`;\
		sed -f $$src src/gen/$$tgt -i;\
	done
	chmod -w src/gen/*.ads
