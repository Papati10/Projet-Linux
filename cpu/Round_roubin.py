processus = [5, 3, 7]

quantum = 2

temps = 0

while processus:

    for i in range(len(processus)):

        if processus[i] > 0:

            if processus[i] > quantum:

                print("Processus", i + 1, "s'exécute pendant", quantum)

                processus[i] -= quantum

                temps += quantum

            else:

                print("Processus", i + 1, "terminé")

                temps += processus[i]

                processus[i] = 0

    processus = [p for p in processus if p > 0]

print("Temps total =", temps)