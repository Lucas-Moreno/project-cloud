# ansible-playbooks

Avant de lancer les playbooks :

Ne pas oublier de changer les variables d'environnements des fichiers vars si elles sont appelés dans le main_installation.yml

Remplacer les variables d'environnements de inventory.ini

Lancement des playbooks :

RUN tout les playbooks : ansible-playbook -i inventory/inventory.ini main_installation.yml

RUN des playbooks spécifiques : ansible-playbook -i inventory/inventory.ini main_installation.yml --tags nomdutag,nomdutag2

Si il y a des problèmes de connexions de mot de passe à la vm : ansible-playbook -i inventory/inventory.ini main_installation.yml --user=user_vm --extra-vars "ansible_sudo_pass=password"
