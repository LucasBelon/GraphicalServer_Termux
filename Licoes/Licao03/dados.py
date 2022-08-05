"""
Programa super simples criado para gerar graficos.
A saida foi redirecionada para data_py.dat com
$ python dados.py > dados_py.dat
"""
from math import e


def f(x, a, b):
    return a*e**(-b*x)


def adiciona_erro(indice, num_dados):
    return (num_dados - indice) / 90 if \
        indice % 3 == 0 else (indice - num_dados) / 90


a = 1
b = 0.2
num_dados = 21

for i in range(num_dados):
    print(f"{i}\t{round((f(i,a,b)+adiciona_erro(i,num_dados)),5)}\t{abs(adiciona_erro(i,num_dados))}")
