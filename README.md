# Minitalk

Minitalk est un projet de l'école 42 dont l’objectif est de réaliser un **système de communication entre deux programmes** en utilisant uniquement **les signaux UNIX** (`SIGUSR1` et `SIGUSR2`).

Le projet contient deux exécutables :
- `server` : reçoit et affiche les messages.
- `client` : envoie une chaîne de caractères au serveur, bit par bit.

---

## 🧠 Principe du projet

Le client encode chaque caractère du message en binaire.  
Pour chaque bit :
- `SIGUSR1` représente **0**
- `SIGUSR2` représente **1**

Le serveur reçoit les signaux, reconstruit le caractère bit par bit, et affiche le message.

---

## 📁 Structure du projet

# minitalk
.
├── src/
│ ├── client.c
│ ├── server.c
│ ├── utils.c
│ └── utils.h
├── Makefile
└── README.md
