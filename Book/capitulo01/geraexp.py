"""Criado arquivo.dat com
$ python geraexp.py > exponencial.dat"""
import math
for i in range(201):
    print(f"{i/10} {math.exp(i/10)}")
