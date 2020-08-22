# Web Framework Benchmark

> `gin` vs `echo`

## Requirement

- `go module support`

## Installation

```bash
git clone https://github.com/ttys3/web-framework-benchmark.git
```

## Running Benchmark

```bash
cd web-framework-benchmark
go test -bench=.
```

## Sample Result

hardware

```bash
❯ neofetch
          /:-------------:\          ttys3@8700k.localhost 
       :-------------------::        --------------------- 
     :-----------/shhOHbmp---:\      OS: Fedora 32 (Workstation Edition) x86_64 
   /-----------omMMMNNNMMD  ---:     Kernel: 5.7.14-200.fc32.x86_64 
  :-----------sMMMMNMNMP.    ---:    Uptime: 3 days, 16 mins 
 :-----------:MMMdP-------    ---\   Packages: 2626 (rpm) 
,------------:MMMd--------    ---:   Shell: zsh 5.8 
:------------:MMMd-------    .---:   Resolution: 3840x2160 
:----    oNMMMMMMMMMNho     .----:   DE: GNOME 
:--     .+shhhMMMmhhy++   .------/   WM: Mutter 
:-    -------:MMMd--------------:    WM Theme: Adwaita 
:-   --------/MMMd-------------;     Theme: Adwaita [GTK2/3] 
:-    ------/hMMMy------------:      Icons: Adwaita [GTK2/3] 
:-- :dMNdhhdNMMNo------------;       Terminal: gnome-terminal 
:---:sdNMMMMNds:------------:        CPU: Intel i7-8700K (12) @ 4.700GHz 
:------:://:-------------::          GPU: Intel UHD Graphics 630 
:---------------------://            GPU: NVIDIA GeForce GTX 1060 3GB 
                                     Memory: 19911MiB / 31531MiB 
```

```bash
❯ go test -bench=.
goos: linux
goarch: amd64
pkg: webfrmbench
BenchmarkEchoStatic-12       	   39211	     31042 ns/op	    2141 B/op	     157 allocs/op
BenchmarkEchoGitHubAPI-12    	   25359	     46970 ns/op	    2994 B/op	     203 allocs/op
BenchmarkEchoGplusAPI-12     	  506317	      2480 ns/op	     172 B/op	      13 allocs/op
BenchmarkEchoParseAPI-12     	  286018	      4354 ns/op	     329 B/op	      26 allocs/op
BenchmarkGinStatic-12        	   34501	     34812 ns/op	    8543 B/op	     157 allocs/op
BenchmarkGinGitHubAPI-12     	   24847	     49210 ns/op	   11143 B/op	     203 allocs/op
BenchmarkGinGplusAPI-12      	  421052	      2647 ns/op	     706 B/op	      13 allocs/op
BenchmarkGinParseAPI-12      	  230026	      5009 ns/op	    1398 B/op	      26 allocs/op
PASS
ok  	webfrmbench	11.397s


❯ go test -bench=.
goos: linux
goarch: amd64
pkg: webfrmbench
BenchmarkEchoStatic-12       	   39014	     31181 ns/op	    2146 B/op	     157 allocs/op
BenchmarkEchoGitHubAPI-12    	   24788	     46777 ns/op	    3026 B/op	     203 allocs/op
BenchmarkEchoGplusAPI-12     	  489716	      2416 ns/op	     174 B/op	      13 allocs/op
BenchmarkEchoParseAPI-12     	  287944	      4246 ns/op	     328 B/op	      26 allocs/op
BenchmarkGinStatic-12        	   35066	     33564 ns/op	    8527 B/op	     157 allocs/op
BenchmarkGinGitHubAPI-12     	   24537	     47691 ns/op	   11161 B/op	     203 allocs/op
BenchmarkGinGplusAPI-12      	  451989	      2641 ns/op	     700 B/op	      13 allocs/op
BenchmarkGinParseAPI-12      	  227436	      5104 ns/op	    1400 B/op	      26 allocs/op
PASS
ok  	webfrmbench	11.293s



❯ go test -bench=.
goos: linux
goarch: amd64
pkg: webfrmbench
BenchmarkEchoStatic-12       	   39085	     31134 ns/op	    2144 B/op	     157 allocs/op
BenchmarkEchoGitHubAPI-12    	   25714	     46939 ns/op	    2976 B/op	     203 allocs/op
BenchmarkEchoGplusAPI-12     	  504808	      2354 ns/op	     172 B/op	      13 allocs/op
BenchmarkEchoParseAPI-12     	  293137	      4247 ns/op	     326 B/op	      26 allocs/op
BenchmarkGinStatic-12        	   34987	     33409 ns/op	    8529 B/op	     157 allocs/op
BenchmarkGinGitHubAPI-12     	   25221	     47322 ns/op	   11122 B/op	     203 allocs/op
BenchmarkGinGplusAPI-12      	  455521	      2605 ns/op	     700 B/op	      13 allocs/op
BenchmarkGinParseAPI-12      	  242322	      4864 ns/op	    1391 B/op	      26 allocs/op
PASS
ok  	webfrmbench	11.358s
```