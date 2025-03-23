filename=$1
TARGET=${filename%.*}
STYLE="./static/css/vpkely.css"
DEPTH=$2
shift;

if [[ $DEPTH == "" ]]; then
    DEPTH=2
fi

#Render_page ./static/css/vpkely.css - ${filename%.*}

pandoc -s -V --highlight-style=pygments \
--css=$STYLE -f markdown+smart "${TARGET}.md" -o "${TARGET}.html" \
--toc --toc-depth $DEPTH #--data-dir=$DATADIR --template $TEMPLATE

echo -e "\n" $TARGET "\n" $STYLE "\n toc ${DEPTH} \n---- DONE!"

