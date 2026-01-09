LATEXMK ?= latexmk

WORKSHEETS_DIR := worksheets
CH0_DIR := $(WORKSHEETS_DIR)/ch0
CH0_SRC_DIR := sections/ch0_absolute_foundations/sections

.PHONY: worksheets clean-worksheets

worksheets: $(CH0_DIR)
	cd $(CH0_SRC_DIR) && $(LATEXMK) -pdf -interaction=nonstopmode \
		-outdir=../../../$(CH0_DIR) -jobname=0.1_integers_and_signs \
		integers_and_signs.tex
	cd $(CH0_SRC_DIR) && $(LATEXMK) -pdf -interaction=nonstopmode \
		-outdir=../../../$(CH0_DIR) -jobname=0.2_order_of_operations \
		order_of_operations.tex
	cd $(CH0_SRC_DIR) && $(LATEXMK) -pdf -interaction=nonstopmode \
		-outdir=../../../$(CH0_DIR) -jobname=0.3_distributive_property \
		distributive_property.tex
	cd $(CH0_SRC_DIR) && $(LATEXMK) -pdf -interaction=nonstopmode \
		-outdir=../../../$(CH0_DIR) -jobname=0.4_mixed_review \
		mixed_review.tex

$(CH0_DIR):
	mkdir -p $(CH0_DIR)

clean-worksheets:
	find $(WORKSHEETS_DIR) -type f -name '*.pdf' -delete
