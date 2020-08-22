graph:
	benchdraw -v=4 --filter="BenchmarkRouter-12" -group=framework --x=router < ./result.txt > ouput.svg

open: graph
	xdg-open ./ouput.svg