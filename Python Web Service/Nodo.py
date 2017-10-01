class Nodo(object):
	def __init__(self, Info):
		self.info = Info
		self.sig = None

	def getInfo(self):
		return self.info

	def getSig(self):
		return self.sig

	def setSig(self,nodo):
		self.sig=nodo

	def setInfo(self,objeto):
		self.info=objeto
		
		