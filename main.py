nome = input("Digite seu nome: ")
print("\nOlá,",nome,"\nSeja bem-vindo(a)!\n")
num1 = int(input('Digite o primeiro número que deseja calcular: '))
num2 = int(input('Digite o segundo número que deseja calcular: '))
print('\nDigite o número correspondente a operação matemática que deseja fazer:\n')
opcao = input('1-Adição\n2-Subtração\n3-Multiplicação\n4-Divisão\n')

if opcao == "1":
  print('Resultado: ', num1 + num2)

elif opcao =="2":
   print("Resultado: ", num1 - num2)

elif opcao == "3":
  print("Resultado: ", num1 * num2)

elif opcao == "4":
  print("Resultado: ", num1 / num2)

else:
  print("Opção inválida")