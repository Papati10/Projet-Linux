processus = [5, 3, 7]
quantum = 2
temps = 0

while any(p > 0 for p in processus):
    for i in range(len(processus)):
        if processus[i] > 0:
            if processus[i] > quantum:
                print(f"Processus {i+1} s'exécute pendant {quantum}")
                processus[i] -= quantum
                temps += quantum
            else:
                print(f"Processus {i+1} s'exécute pendant {processus[i]}")
                temps += processus[i]
                processus[i] = 0
                print(f"Processus {i+1} terminé")

print(f"\nTemps total : {temps}")