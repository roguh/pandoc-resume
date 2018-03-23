OUTPUT_DIRECTORY=out

HTML='--standalone --self-contained --css killercup.css --css style.css'
DOCX='--reference-doc=reference.docx'
TEX='--latex-engine=xelatex'

if [ $# != 2 ] ; then
    echo "USAGE: $0 filename [pdf|html|docx|tex]"
    exit 1
fi

mkdir -p $OUTPUT_DIRECTORY
pandoc $HTML $DOCX $TEX --smart -f markdown+multiline_tables $1.md -o $OUTPUT_DIRECTORY/$1.$2