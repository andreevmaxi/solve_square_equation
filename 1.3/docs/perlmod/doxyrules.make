DOXY_EXEC_PATH = C:/Program Files/doxygen/bin
DOXYFILE = C:/Program Files/doxygen/bin/-
DOXYDOCS_PM = C:/Users/Maksim/Desktop/homework/solve_square_equation/docs/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = C:/Users/Maksim/Desktop/homework/solve_square_equation/docs/perlmod/DoxyStructure.pm
DOXYRULES = C:/Users/Maksim/Desktop/homework/solve_square_equation/docs/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"
