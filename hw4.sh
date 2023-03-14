#hw4
./makeblastdb -in mystery_transcripts.fasta -dbtype nucl -out mystery_transcriptsbd
./makeblastdb -in mystery_proteins.fasta -dbtype prot -out mystert_proteinsbd
./blastn -query mystery_nucleotide_query.fasta -subject mystery_transcripts.fasta -evalue 0.001 -outfmt 7 -max_hsps 5 -out query1
#4 most similar hits are 91.965 91.351 91.351
awk '{print}' query1 >> most_similar.txt
./blastp -query mystery_protein_query.fasta -subject mystery_proteins.fasta -evalue 0.00001 -outfmt 7 -max_hsps 15 -out query2
#7 P010027090796 P010027090798 P010027073865 P010027077695
#8Arabica
#9cCoffea