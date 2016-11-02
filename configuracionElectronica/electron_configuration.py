import sys

def electron_config(num_atomico):
    orbitales = '1s 2s 2p 3s 3p 4s 3d 4p 5s 4d 5p 6s 4f 5d 6p 7s 5f 6d 7p 6f 7d 7f'.split()
    electronesPorOrbital = dict(s=2,p=6,d=10,f=14)
    contadorDeElectrones = 0
    respuesta = []
    for i in orbitales:
        if contadorDeElectrones < num_atomico:
            orbital = ''.join(j for j in i if j in 'spdf')
            respuesta.append(i+str(electronesPorOrbital[orbital]))
            contadorDeElectrones += electronesPorOrbital[orbital]
            #print orbitales
            #print electronesPorOrbital
            #print contadorDeElectrones
        else: break
    
    if contadorDeElectrones > num_atomico:
        dif = contadorDeElectrones - num_atomico
        #print dif
        last_electron_pos = respuesta[-1].find(orbital)+1 #el ultimo numero de la cadena de respues
        last_electrons = int(respuesta[-1][last_electron_pos:])
        new_num = last_electrons - dif
        respuesta[-1]= respuesta[-1][:last_electron_pos] + str(new_num)
    return ';'.join(respuesta)

num_atomico = int(sys.argv[1])
print "Numero atomico = " + str(num_atomico)
print "Configuracion electronica = " + electron_config(num_atomico)
