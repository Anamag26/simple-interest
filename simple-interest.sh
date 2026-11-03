#!/bin/bash
# Script para calcular juros simples
echo "Insira o valor principal:"
read principal
echo "Insira a taxa de juro anual (%):"
read rate
echo "Insira o período de tempo (anos):"
read time

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "O juro simples é: $interest"
echo "O montante total é: $total"
