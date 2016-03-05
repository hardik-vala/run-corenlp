# run-corenlp
Makes the multi-processed running of [Stanford's CoreNLP](http://nlp.stanford.edu/software/corenlp.shtml) over a corpus of texts real easy (One-liner easy), outputting the CoreNLP .xml dump for each input test.

Usage:

```
run-corpus-corenlp.sh -c <Path to CoreNLP project folder> -t <Path to corpus folder> -o <Path to output folder> -l <Path to log folder> -n <# processes to spawn> [-f]
```

The output .xml file for each input file is given the same name except with extension .xml, and by default, CoreNLP is not run over any input text with a corresponding output file already in the output directory (To force this, you can add the -f option).

Enjoy!
