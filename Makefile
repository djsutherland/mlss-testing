.PHONY: all commit

all: testing.ipynb solutions-testing.ipynb

testing.ipynb: solutions-testing.ipynb build.py README-setup.md
	./build.py testing --include-readme

solutions-%.ipynb: solutions-src-%.ipynb
	@# name python3 is the auto one from currently active conda env...we hope
	jupyter nbconvert --to=notebook --execute $< --output=$@ \
		--ExecutePreprocessor.kernel_name=python3 \
		--ExecutePreprocessor.timeout=300

commit: all
	./commit.py

