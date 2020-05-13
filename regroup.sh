# en deux étapes
cd wetransfer-daafab/
for i in *.TPS ; do
    cat $i | grep -e , -e IMAGE | tr -d "\r" | tr "\n" ";"  > ../out/$i
    echo $i >> ../out/$i
    echo -e "\n" >> ../out/$i
done

cd ../out
cat *.TPS | sed '/^$/d' | tr ' ' ';' > ../alltps.csv
