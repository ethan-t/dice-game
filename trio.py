from measures import measures
from measuretable import mtable
from random import randint
from bottle import SimpleTemplate

with open("template.ly", "r") as f:
  template = f.read()

def rollDice():
  return randint(1, 6) + randint(1, 6)

def getMeasure(measure, result):
  return mtable[measure][result-2]

def composeMusic():
  for i in range(1, 17):
    print(getMeasure(i, rollDice()))

composeMusic()
