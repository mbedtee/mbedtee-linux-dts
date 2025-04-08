# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2025 KapaXL (kapa.xl@outlook.com)

.PHONY: all
all: $(PLATFORM).dtb
	@mv -f $< $(DTB_DIR)

$(PLATFORM).dtb: $(PLATFORM).o
	@$(DTC) -I dts -O dtb -o $@ $<

$(PLATFORM).o: $(PLATFORM).dts *.dtsi
	@cpp -Wp,-MD,$@.d -nostdinc -I`dirname $<` \
		-x assembler-with-cpp -o $@ $<