#!/bin/bash

# Fonction pour remplir le tableau
remplir() {
    echo "Saisissez une liste de valeurs entières (saisie négative pour terminer):"
    while true; do
        read valeur
        if [ $valeur -lt 0 ]; then
            break
        else
            tableau+=("$valeur")
        fi
    done

    echo "Tableau rempli avec ${#tableau[@]} éléments."
}

# Fonction pour traiter le tableau
traiter() {
    echo "Traitement du tableau:"
    for element in "${tableau[@]}"; do
        utilisateur=$(getent passwd "$element" | cut -d: -f1)
        
        if [ -n "$utilisateur" ]; then
            uid=$(id -u "$utilisateur")
            echo "UID: $element, Utilisateur: $utilisateur, UID Reconnu: $uid"
        else
            echo "Erreur: Aucun utilisateur trouvé pour l'UID $element."
        fi
    done
}

# Tableau pour stocker les valeurs
declare -a tableau

# Appeler la fonction pour remplir le tableau
remplir

# Appeler la fonction pour traiter le tableau
traiter

