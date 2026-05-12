#!/bin/bash

echo "creation du dossier backup"
mkdir backup

echo "creation du fichier"

touch fichier1.txt

echo "copie du fichier"

cp fichier1.txt backup/ 

echo "Renommage du fichier" 

mv fichier1.txt fichier2.txt

echo "Affichage des fichiers"

ls

echo "chemin actuel"

pwd 

echo "Sauvegarde terminé"

