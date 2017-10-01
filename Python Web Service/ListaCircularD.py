
class Nodo:
	def __init__(self, usuario, contrasenia, carpeta):
		self.usuario = usuario
		self.contrasenia = contrasenia
		self.carpeta = carpeta
		self.siguiente = None
		self.anterior = None

	def  info(self):
		self.dato = str(self.usuario + " " + self.contrasenia + " " + self.carpeta )
		return str(self.dato)


class Lista:

	def __init__(self):
		self.primero = None
		self.ultimo = None

	def insertar(self, usuario, contra, carpeta):
	#tenemos que validar que el usuario no exista	
		nuevo = Nodo(usuario, contra, carpeta)
		if self.primero == None:
			self.primero = nuevo
			self.primero.siguiente = self.ultimo
			self.primero.anterior = self.ultimo
			self.ultimo = nuevo
			self.ultimo.siguiente = self.primero
			self.ultimo.anterior = self.primero
		else:
			if(self.buscar(usuario) == False):
				aux = self.ultimo
				self.ultimo = nuevo
				aux.siguiente = self.ultimo
				self.ultimo.anterior = aux
				self.ultimo.siguiente = self.primero
				self.primero.anterior = self.ultimo
			else:
				print("El usuario ya existe y no se pudo insertar, ingrese otro nombre")
	

	def mostrar(self):
		print("---------------------LISTA-------------------")
		if self.primero != None:
			aux = self.primero 
			#print ("el primer dato es: "+aux.info())
			while aux != self.ultimo:
				print ("El dato es: "+aux.info())
				aux = aux.siguiente 
			if aux == self.ultimo:
				print ("el ultimo dato es: "+ aux.info())
		else:
			print("Lista Vacia")
				

	def eliminar(self, user):
		if self.primero != None and self.primero.siguiente != self.ultimo:
			aux = self.primero
			nombre = None
			anterior = None
			while aux != self.ultimo:
				if(aux.siguiente.usuario == user):
					anterior = aux
					nombre = aux.siguiente.usuario
					print("el anterior al nodo que buscamos es: "+anterior.usuario)
				if(aux.anterior.usuario == user):
					posterior = aux	
					nombre = aux.anterior.usuario				
					print("el posterior al nodo que buscamos es: "+posterior.usuario)
				aux = aux.siguiente
			if (aux == self.ultimo):
				if(aux.anterior.usuario == user):
					posterior = aux
					nombre = aux.anterior.usuario
					print("el posterior al nodo es: "+posterior.usuario)
				elif(aux.usuario == user):
					#se quiere eliminar el ultimo
					self.ultimo = aux.anterior
					aux.anterior.anterior.siguiente = self.ultimo
					self.ultimo.siguiente = self.primero
					print("se elimino al ultimo elemento")

			if (self.primero.usuario == user):
				anterior = self.primero.anterior
				nombre = self.primero.usuario
				print("El anterior al que buscamos es "+ anterior.usuario)
				posterior = self.primero.siguiente
				self.primero = posterior
				self.primero.anterior = self.ultimo
				self.ultimo.siguiente = self.primero
			if(anterior != None ):
				if(nombre == user and nombre  != None):
					anterior.siguiente = posterior
					posterior.anterior = anterior
				else:
					print("El nombre ingresado no existe en nuestra lista: "+ user)
			elif(nombre != user and nombre != None):
				print("EL NOMBRE INGRESADO NO EXISTE EN LA LISTA: "+ user)
			elif(nombre == None):
				print("EL NOMBRE INGRESADO NO EXISTE EN LA LISTA: "+ user)

			#ahora tenemos que hacer los enlaces
		elif(self.primero == self.ultimo):
			if(self.primero.usuario == user):
				self.primero = None
				self.ultimo = None
			else:
				print("El nombre ingresado no es correcto: " + user)

		elif(self.primero.siguiente == self.ultimo):
			if(self.primero.usuario == user):
				self.primero = self.ultimo
				self.primero.siguiente = self.ultimo
				self.primero.anterior = self.ultimo
				self.ultimo.anterior = self.primero
				self.ultimo.siguiente = self.primero
				print("unico elemento en la lista: "+  self.primero.usuario)
			elif(self.ultimo.usuario == user):
				self.ultimo == None
				self.ultimo = self.primero
				self.ultimo.anterior = self.primero
				self.ultimo.siguiente = self.primero
				self.primero.anterior = self.ultimo
				self.primero.siguiente = self.ultimo
			else:
				print("EL NOMBRE INGRESADO NO EXISTE EN LA LISTA: "+user)
		else:
			print("Lista Vacia")		

	def buscar(self, user):
		encontrado = False 
		if(self.primero != None):
			aux = self.primero
			while(aux != self.ultimo):
				if(aux.usuario == user):
					print("Elemento encontrado sus datos son: "+aux.info())
					encontrado = True
					break;	
				aux = aux.siguiente
			if(encontrado == False)	:
				if(aux == self.ultimo and aux.usuario == user):
					print("Elemento encontrado sus datos son: "+aux.info())
					encontrado = True
			if(encontrado == False):
				print("EL elemento no existe en la lista")
		else:
			print("La lista esta vacia")
		return encontrado

	def iniciarSesion(self, user, contra):
		encontrado = False 
		if(self.primero != None):
			aux = self.primero
			while(aux != self.ultimo):
				if(aux.usuario == user and aux.contrasenia == contra):
					print("Elemento encontrado sus datos son: "+aux.info())
					encontrado = True
					return True
					break;	
				aux = aux.siguiente
			if(encontrado == False)	:
				if(aux == self.ultimo and aux.usuario == user and aux.contrasenia == contra):
					print("Elemento encontrado sus datos son: "+aux.info())
					encontrado = True
					return True
			if(encontrado == False):
				print("EL elemento no existe en la lista")
		else:
			print("La lista esta vacia")
			return False

	def graficar(self):
		grafico = "digraph{\n"
		grafico+="rankdir = LR \n" "node[fontsize = 15 shape = circle] \n"
		n1 = 0;
		n2 = 1;
		if(self.primero != None):
			ante = self.primero
			sig = self.primero.siguiente
			while(ante != self.ultimo):
				grafico=grafico+"n"+str(n1)+"[label =\""+ante.usuario+"\"]"+"\n"
				grafico=grafico+"n"+str(n2)+"[label =\""+sig.usuario+"\"]"+"\n"
				grafico=grafico+"n"+str(n1)+"->"+"n"+str(n2)+"\n"
				grafico=grafico+"n"+str(n2)+"->"+"n"+str(n1)+"\n"
				n1=n1+1
				n2=n2+1
				ante = ante.siguiente
				sig = sig.siguiente
			if(ante == self.ultimo):
				grafico = grafico + "n" + str(n1)+"[label = \""+self.ultimo.usuario+"\"]"+"\n"
				grafico=grafico+"n"+str(n1)+"->"+"n"+str(0)+"\n"
				grafico=grafico+"n"+str(0)+"->"+"n"+str(n1)+"\n"
				n1=n1+1
				n2=n2+1
		grafico += "}"
		return grafico