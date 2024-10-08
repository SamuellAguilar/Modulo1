#!/bin/bash

exibir_menu() {
    echo "Escolha uma operação:"
    echo "1. Adição"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"
    echo "5. Sair"
}

echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2

while true; do
    exibir_menu
    read -p "Digite sua escolha (1-5): " escolha

    case $escolha in
        1)
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado da adição: $resultado"
            ;;
        2)
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado da subtração: $resultado"
            ;;
        3)
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado da multiplicação: $resultado"
            ;;
        4)
            if [ "$num2" -ne 0 ]; then
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado da divisão: $resultado"
            else
                echo "Erro: Divisão por zero não é permitida."
            fi
            ;;
        5)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            ;;
    esac
done