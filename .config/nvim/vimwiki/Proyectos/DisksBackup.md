# +-------------------+
# |    DisksBackup    |
# +-------------------+

Sistema de backup de discos duros para mantener actualizados los discos duros. Puesto
que no todos los discos duros han de estar actualizados entre ellos, la idea seria 
que el propio programa fuese capaz de detectar las carpetas equivalentes entre discos
duros, observando que archivos han cambiado y actulizandolos.

Para poder detectar las carpetas equivalentes se incluirian o bien un unico documento
.foldBkup en el que se incluyan las carpetas que se desean actualizar, o bien varios 
documentos .foldBkup en cada carpeta a actualizar. 

El sistema de deteccion de las carpetas se realizara mediante un codigo unico para cada
carpeta equivalente entre discos duros. Dicho codigo se incluira en la primera linea 
del documento .foldBkup. Con este codigo el programa prodra traducir los path (en el 
disco duro de origen y de destino) de las carpetas. Para ello se incluira un diccionario 
con todos los codigos.

```python

            dict = {foldCode1 : {
                                    diskCode1 : foldePath1,
                                    diskCode2 : foldePath2,
                                    diskCode3 : foldePath3,
                                    ...
                                },
                    foldCode2 : {
                                    diskCode1 : foldePath1,
                                    diskCode2 : foldePath2,
                                    diskCode3 : foldePath3,
                                    ...
                                },
                    ...
                    }
        
```

Ademas de el codigo unico de la carpeta, el documento .foldbkup incluiria un segundo 
bloque con los archivos de la carpeta que desea ignorar, en el caso de que exista (tipo
archivo .gitignore de github). Los discos duros han de contener ademas un codigo que 
identifique a cada disco duro.

El programa ha de ser capaz de detectar los discos duros disponibles, y preguntar al usuario
que disco duro quiere actualizar y desde cual.


##  Software   
## ------------

Seran 2 programas diferentes, uno escrito en Python y otro en Shell. El programa principal
sera el escrito en Shell. Este programa recorrera el disco duro de origen buscando archivos
.foldBkup, y pasara su path al programa en Python.

El programa en python recibe el path del archivo .foldBkup y lee tanto el codigo unico de 
la carpeta como los archivos a ignorar en la backup. Con esta informacion copia los archivos 
del disco duro origen al disco duro destino.


