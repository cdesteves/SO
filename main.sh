#!/bin/bash
# Bash Menu Script Example

echo " "
echo "Menu Principal"
echo " "
dat="dados.txt"

PS3='Introduza a opção: '
options=("Registar Dados" "Alterar Dados" "Visualizar Dados" "Relatórios" "Gerir Backups" "Sair do Programa")
select opt in "${options[@]}"
do
    case $opt in
        "Registar Dados")
		      bash "registo.sh"
        ;;
        "Alterar Dados")
          bash "alterar_dados.sh"
        ;;
        "Visualizar Dados")
          echo "you chose choice $REPLY which is $opt"
        ;;
		    "Relatórios")
          bash "relatorios.sh"
        ;;
        "Gerir Backups")
          bash "backup.sh"
        ;;
        "Sair do Programa")
          break
        ;;

        *) echo "invalid option $REPLY";;
    esac
done
