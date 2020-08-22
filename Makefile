open: ouput.svg
	xdg-open ./ouput.svg

ouput.svg: benchmark.txt
	benchdraw -v=4 --filter="BenchmarkEchoGin" -group="framework" --x="router" --y="ns/op" < ./benchmark.txt > ouput.svg

benchmark.txt:
	go test -benchmem -run=^$$ -bench=. ./... | tee benchmark.txt

clean:
	rm -f benchmark.txt ouput.svg