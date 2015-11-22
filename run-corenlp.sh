#!/bin/bash

# Author: Hardik

# TODO: Print usage message on erroneous output.

# Parse arguments.
while [[ $@ > 0 ]]
do
	key=$1
	
	case $1 in
		-c|--corenlp)
		# Path to directory with CoreNLP .jar's.
		CORENLP_DIRPATH=$2
		shift
		;;
		-t|--text)
		# Path to file with paths to input text files.
		FILELIST_PATH=$2
		shift
		;;
		-o|--output)
		# Path to output directory.
		OUTPUT_DIRPATH=$2
		shift
		;;
		-l|--log)
		# Path to log file.
		LOG_PATH=$2
		shift
		;;
		*)
		# (Unkwown parameter)
		;;
	esac
	shift
done

java -cp $CORENLP_DIRPATH/stanford-corenlp-3.5.2.jar:$CORENLP_DIRPATH/stanford-corenlp-3.5.2-models.jar:xom.jar:$CORENLP_DIRPATH/joda-time.jar:$CORENLP_DIRPATH/jollyday.jar:$CORENLP_DIRPATH/ejml-0.23.jar -Xmx16g edu.stanford.nlp.pipeline.StanfordCoreNLP -annotators tokenize,ssplit,pos,lemma,ner,parse -filelist $FILELIST_PATH -outputDirectory $OUTPUT_DIRPATH -replaceExtension &> $LOG_PATH

# Remove the filelist when done.
rm -f $FILELIST_PATH

# If parent directory is empty, then remove it.
parent_dirpath=$(dirname $FILELIST_PATH)
[ -d $parent_dirpath ] && [ "$(ls -A $parent_dirpath 2>/dev/null)" ] && rm -rf $parent_dirpath
