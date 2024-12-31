# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2019 KapaXL (kapa.xl@outlook.com)

export DTB_DIR = $(CURDIR)/dtb

.PHONY: all
all:
	@mkdir -p $(DTB_DIR)
	$(MAKE) -C $(PLATFORM)
