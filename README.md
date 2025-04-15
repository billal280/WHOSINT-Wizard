# 🧠 WHOSINT Wizard

> Assistant OSINT, qui pense comme Akinator, déploie comme un DevOps, et fouille comme un hacker...

---

## 🚀 Description

**WHOSINT Wizard** est une plateforme qui te pose des questions sur une cible (pseudo, email, domaine...) et déclenche automatiquement les bons outils OSINT pour générer un rapport.  
Tout est déployé dynamiquement sur une instance AWS EC2 Kali Linux via Terraform. Les tools d'OSINT utilisé seront Sherlock, Holehe, theHarvester, Sublist3r, WhatWeb, ExifTool, Nmap

---

## 📦 Contenu actuel du repo

```bash
WHOSINT-Wizard/
├── awizard.py                
├── Infrastructure/       
│   ├── main.tf
│   ├── outputs.tf          
│   └──variables.tf      
└── README.md             