class nodoRamaArbol(object):
    def __init__(self,raiz,arbol = None):
        self.arbol = arbol or None
        self.raiz = raiz
        self.anterior = None
        self.siguiente = None
        self.derecha = RamaArbol()
        self.izquierda = RamaArbol()

class Arbol(object):
    def __init__(self):
        self.raiz = None
        self.nodos = ""

    def inserta(self, nodo, rama):
        if rama.hoja:
            rama.insertar(nodo)
            if rama.cuenta == 5:
                return self.dividir(rama)
            else:
                return rama
        else:
            temp = rama.primero
            while temp != None:
                if nodo.raiz == temp.raiz:
                    return rama
                elif nodo.raiz < temp.raiz:
                    obj = self.inserta(nodo, temp.izquierda)
                    rama.insertar(obj)
                    if rama.cuenta == 5:
                        return self.dividir(rama)
                    return rama
                elif (temp.siguiente == None):
                    obj = self.inserta(nodo,temp.derecha)
                    rama.insertar(obj)
                    if rama.cuenta == 5:
                        return self.dividir(rama)
                    return rama
                temp = temp.siguiente
        return rama


    def dividir(rama):
        derecha = RamaArbol()
        izquierda = RamaArbol()
        medio = None
        temp = self.rama.primero
        i = 1
        while (i<6):
            nodo = nodoRamaArbol(temp.raiz,temp.arbol)
            nodo.izquierda = temp.izquierda
            nodo.derecha = temp.derecha
            if nodo.derecha != None:
                if nodo.izquierda != None:
                    izquierda.hoja = False
                    derecha.hoja = False
            if i == 1:
                print(1)
            if i == 2:
                izquierda.insertar(nodo)
            if i == 3:
                medio = nodo
            if i == 4:
                print(4)
            if i == 5:
                derecha.insertar(nodo)
            i += 1
            temp = temp.siguiente
        medio.izquierda = izquierda
        medio.derecha = derecha
        return medio

    def insertar(self, root, arbol=None):
        nodo = nodoRamaArbol(root, arbol)
        if self.raiz == None:
            self.raiz.insertar(nodo)
        else:
            obj = self.inserta(nodo,root)
            raiz.insertar(obj)
            raiz.hoja = False

class RamaArbol(object):
    def __init__(self):
        self.primero = None
        self.cuenta = 0
        self.hoja = True
        self.tempFlecha = ""

    def insertar(self,nodo):
        if self.primero==None:
            self.primero = nodo
            self.primero.anterior = None
            self.primero.siguiente = None
            self.cuenta += 1
        else:
            temp = self.primero
            while temp != None:
                if nodo.raiz == temp.raiz:
                    break
                elif nodo.raiz < temp.raiz:
                    self.cuenta += 1
                    if temp == self.primero:
                        self.primero.anterio = nodo
                        self.primero.izquierda = nodo.derecha
                        nodo.siguiente = self.primero
                        self.primero = nodo
                        break
                    else:
                        nodo.anterior = temp.anterior
                        nodo.siguiente = temp
                        temp.anterior.siguiente = nodo
                        temp.anterior.derecha = nodo.izquierda
                        temp.anterior = nodo
                        temp.izquierda = nodo.derecha
                        break
                elif temp.siguiente == None:
                    self.cuenta +=1
                    temp.siguiente = nodo
                    temp.derecha = nodo.izquierda
                    nodo.anterior = temp
                    nodo.siguiente = None
                    break
                temp = temp.siguiente
