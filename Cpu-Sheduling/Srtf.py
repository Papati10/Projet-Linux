processus = [6, 4, 2]

temps = 0

while processus:

    plus_court = min(processus)

    index = processus.index(plus_court)

    print("Processus", index + 1, "s'exécute")

    temps += plus_court

    processus.remove(plus_court)

print("Temps total =", temps)