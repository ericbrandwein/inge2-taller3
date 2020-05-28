entregable.zip: informe.pdf stackar/src/main/ stackar/src/test-ej-1/ stackar/src/test-ej-3/ stackar/src/test-ej-4/
	zip --recurse-paths entregable.zip $^

informe.pdf: informe.md
	pandoc $< -o informe.pdf -V geometry:margin=3cm

clean:
	rm -rf informe.pdf entregable.zip