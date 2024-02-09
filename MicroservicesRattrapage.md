# Architecture des microservices

## Q1 : Définition et évolution
L'architecture de microservice est une approche du développement logiciel dans laquelle une application volumineuse est décomposée en services plus petits, faiblement couplés, déployabls et évolutifs indépendamment. Cela comparerr avec l'architecture monolithique traditionnelle, dans laquelle l'ensemble de l'aplication est construit comme une unité unique et étroitement intégrée.

L'évolution de l'architecture monolithique traditionnelle vers l'architecture de microservices a été motivée par :

- **Évolutivité :** Les microservices permettent aux composants individuels d'une application d'être mis à l'échelle indépendamment en fonction de la demande.
- **Flexibilité :** Lils permettent aux équipes de travailler simultanément sur différents services, ce qui accélère les cycles de développement et de déploiement.
- **Résilience :** il augmente l'isolation des pannes, car les pannes d'un service n'ont pas nécessairement d'impact sur l'ensemble du système.
- **Diversité technologique :** il permet l'utilisation de différentes technologies et langages de programmation, permettant aux équipes de choisir le meilleur outil pour chaque service spécifique.

## Q2 : Architecture pilotée par les événements
L'architecture événementielle (EDA) est un modèle architectural dans lequel le flux d'informations au sein d'un système est basé sur l'occurrence d'événements. Dans le contexte des microservices, EDA est pertinent car il permet la communication et la coordination entre les services sans dépendances directes.

Les modèles basés sur les événements, tels que le sourcing d'événements et la séparation des responsabilités des requêtes de commande (CQRS), peuvent être implémentés dans un écosystème de microservices pour obtenir un couplage lâche et une évolutivité. 

## Q3 : Persistance polyglotte
La persistance polyglotte fait référence à la pratique consistant à utiliser plusieurs technologies de stockage de données au sein d'une seule application ou d'un seul système. Dans une architecture de microservices, différents services peuvent avoir des exigences diverses en matière de stockage de données, ce qui conduit à l'adoption de diverses bases de données, notamment des bases de données relationnelles, des bases de données NoSQL, des magasins de valeurs clés, etc.

Les avantages de la persistance polyglotte sontt  :

- **Performances optimisées :** 
- **Flexibilité :** 
- **Risque réduit :** 

Les défis de la persistance polyglotte comprennent :

- **Complexité :** 
- **Frais opérationnels :** 

## Q4 : Conteneurisation et orchestration
La conteneurisation illustrée par des technologies telles que Docker et les plateformes d'orchestration telles que Kubernetes, jouent un rôle crucial dans le déploiement et la gestion des microservices à grande échelle

La conteneurisation encapsule chaque microservice et ses dépendances dans un conteneur léger et portable, garantissant ainsi la cohérence entre les différents environnements et simplifiant le déploiement
La conteneurisation et l'orchestration répondent aux défis liés à l'évolutivité en permettant une mise à l'échelle dynamique des microservices en fonction de la demande. Ils améliorent la résilience en redémarrant automatiquement les conteneurs défaillants et en distribuant le trafic vers des instances saines. De plus, ils optimisent l'utilisation des ressources en regroupant plusieurs microservices sur la même machine physique ou virtuelle.

## Q5 : Observabilité
L'observabilité dans le contexte de l'architecture des microservices fait référence à la capacité de surveiller, déboguer et comprendre le comportement d'un système distribué. Cela implique de collecter et d’analyser les données télémétriques de divers composants pour obtenir des informations sur l’état du système, ses performances et les problèmes potentiels.


## Q6 : Passerelle API
Une passerelle API est un point d'entrée centralisé pour la communication client dans une architecture de microservices. Il agit comme un proxy inverse qui achemine les demandes entrantes des clients vers les microservices appropriés, éliminant ainsi la complexité de la topologie du service sous-jacente.

Le rôle d'une passerelle API dans la gestion de la communication entre les clients et les microservices est :

- **Routage des requêtes :** API Gateway achemine les requêtes entrantes vers le microservice correspondant en fonction de règles et de configurations prédéfinies.
- **Traduction de protocole :** 
- **Sécurité :** 
- **Gestion du trafic :** 
En servant de point d'entrée unique pour la communication client, une passerelle API simplifie les interactions des clients avec l'écosystème de microservices, améliore la sécurité et permet un contrôle et une surveillance centralisés du trafic API.
