# explicit wildcard expansion suppresses errors when no files are found

include $(wildcard *.deps)

%.stl: %.scad
	openscad -m make -o $@ -d .deps/$@.deps $<
