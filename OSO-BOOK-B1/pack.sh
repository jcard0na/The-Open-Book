
FILE=OSO-BOOK-B1-$1.zip
rm -f ${FILE}
zip -r9 ${FILE} gerbers
mv ${FILE} builds 

./scripts/jlcpcb-pos-csp-process.sh gerbers/OSO-BOOK-B1-all-pos.csv
cp gerbers/OSO-BOOK-B1-all-pos.csv builds/OSO-BOOK-B1-pos-$1.csv
cp OSO-BOOK-B1.csv builds/OSO-BOOK-B1-bom-$1.csv
