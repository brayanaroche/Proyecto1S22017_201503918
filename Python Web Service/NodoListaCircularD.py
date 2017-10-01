class NodoListaCircularD():
	def __init__(self, user, password, carpeta):
		self.user = user
		self.password = password
		self.carpeta = carpeta
		self.siguiente = None
		self.anterior = None

	def informacion(self):
		self.informacion = str(self.usuario + " " + self.contrasenia + " " + self.carpeta )
		return str(self.informacion)
		