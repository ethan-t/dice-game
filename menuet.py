from measures import menuetMeasures
from measuretable import menuetTable
from random import randint
from bottle import SimpleTemplate

with open("template.ly", "r") as f:
  template = f.read()

def rollDice():
  return randint(1, 12) # Not really a dice roll

def chooseMeasure(measure, result):
  return menuetTable[measure][result-2]

def getMeasure(measure):
    return menuetMeasures[measure]

def composeMusic():
  measureResult = []
  for i in range(1, 17):
    measureResult.append(chooseMeasure(i, rollDice()))
  return measureResult

def writeMusic(measures):
  bassMeasures = [getMeasure(x)[0].decode('utf-8') for x in measures]
  trebleMeasures = [getMeasure(x)[1].decode('utf-8') for x in measures]
  return SimpleTemplate(template).render(treble=trebleMeasures, bass=bassMeasures)

print(writeMusic(composeMusic()))
