#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "ERREUR: Lance avec sudo ./admin_systeme.sh" 
   exit 1
fi

while true; do
    clear
    echo "===== ÉTAPE 1 : AUTOMATISATION SHELL ====="
    echo "1. Créer compte utilisateur + quota disque"
    echo "2. Configurer chmod/chown"
    echo "3. Quitter"
    echo "=========================================="
    read -p "Choix: " choix
    
    case $choix in
        1)
            read -p "Nom du nouvel utilisateur: " username
            read -p "Quota disque en Mo: " quota
            useradd -m "$username"
            echo "$username:1234" | chpasswd
            setquota -u "$username" "$quota" "$quota" 0 0 /
            echo "✅ User $username créé | Quota: ${quota}Mo | Mdp: 1234"
            read -p "Appuie sur Entrée pour continuer..."
            ;;
        2)
            read -p "Chemin du fichier/dossier: " cible
            read -p "Nouveau propriétaire: " newuser
            read -p "Droits en octal ex 755: " droits
            chown "$newuser" "$cible"
            chmod "$droits" "$cible"
            ls -ld "$cible"
            echo "✅ chmod/chown appliqués sur $cible"
            read -p "Appuie sur Entrée pour continuer..."
            ;;
        3)
            echo "Fin Étape 1"
            exit 0
            ;;
        *)
            echo "Choix invalide: tape 1, 2 ou 3"
            sleep 1
            ;;
    esac
done 
