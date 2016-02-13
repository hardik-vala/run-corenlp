# run-corenlp
Makes the multi-processed running of [Stanford's CoreNLP](http://nlp.stanford.edu/software/corenlp.shtml) over a corpus of texts real easy.

Usage:

```
run-corpus-corenlp.sh -c <Path to CoreNLP project folder> -t <Path to corpus folder> -o <Path to output folder> -l <Path to log folder> -n <# processes to spawn> [-f]
```

By default, CoreNLP is not run over any input text with a corresponding output file already in the output directory. To force this, you can add the -f option.

Enjoy!
