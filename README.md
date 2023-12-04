# postmark

Modified from [the original PostMark
benchmark](https://openbenchmarking.org/test/pts/postmark) to report things in
nanoseconds.

## Building

```
make
```

## Running

Unless you want to pass everything through the command line, you'll probably
want to configure a PostMark benchmark file (i.e. `benchmark.pmrc`).

```
# benchmark.pmrc
set size 500 10000
set number 100000
set transactions 100000
set read 512
set write 512
set buffering true
set location /tmp
run
quit
```

To actually run:

```
./postmark benchmark.pmrc
```
