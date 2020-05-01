#   +--------------+
#   | WorkingChaos |
#   +--------------+

Sistema de gestion de tareas con una clasificacion segun relevancia de la tarea
que permita definir que tarea realizar

Las tareas se agruparan en diferentes grupos, pudiendo definir tareas para Master,
laboral, personal, codigo,... Cada uno de estos grupos vendra a su vez definido por
una cierta relevancia

Dentro de cada tarea se definira el grado de importancia de la tarea (si se trata de
una tarea importante, tarea de seguimiento, examen,...), el nivel de tiempo que se 
estima que durara la tarea (si se trata de un trabajo de una hora o del TFG) y la 
fecha limite de entrega (en el caso de que exista).

Las Tareas se pueden agrupar en grupos y subgrupos, pudiendo crear varios subniveles
de subgrupos. Dichos subgrupos tendran a su vez una categoria de relevancia, siendo 
esta acumulable con la importancia de los grupos superiores.

Al igual que con los grupos, las tareas tambien podran tener subtareas. La existencia
de subtareas en una Tarea conllevara un aumento en el peso de prioridad referente a
la duracion de trabajo.


      +-----------------------+-------+
      | Feature               | Pesos |
      +=======================|=======+
      | Prioridad del grupo   | xxxx  |
      | Prioridad de la Tarea | xxxx  |
      | Duracion de trabajo   | xxxx  |
      | Tiempo hasta entrega  | xxxx  |
      +-----------------------+-------+


Se muestran clasificaciones en funcion del nivel en el que nos encontremos, mostrando 
las tareas en funcion de la importancia o urgencia de esta. Esta clasificacion puede 
ser modificada por el usuario, moviendo las ventanas de las tareas (arrastrando o 
modificando las lineas) de tal manera que dicha correccion ayude al entrenamiento
de la clasificacion.

##  Nuevas Ideas
## -----------------

    - Estaria bien que los grupos/subgrupos pudiesen estar 
    vinculados a archivos .todo

    - Vistas en forma de Listas, Calendario

    - Sincronizacion con Google Tasks

    - Ciertas tareas no se pueden comenzar hasta que no concluyen otras (diagrama de
gantt) por lo que no podra aparecen en el ranking hasta que no se haya concluido la otra
tarea. Esto tambien afectara a la clasificacion de las tareas superiores, teniendo mayor
prioridad aquellas de las que dependan mas tareas.

	- Trello organiza las tares por columnas, pudiendo hacer distincion entre tareas
pendientes (ToDo), tareas en proceso (Doing) y ya realizadas (Done). Ademas de estas columnas
tambien permite realizar mas o modificar las antes mencionadas.



 Software
------------

Las tareas se guardaran en una base de datos SQL 

            +-----------------+
            | Tablas          |
            +-----------------+
            | Grupos          |
            | Relation-groups |
            | Tareas          |
            | Relation-Tareas |
            +-----------------+

El resto de operaciones para obtener la tarea prioritaria (o ranking) se realizarian 
con python, aunque solo harian falta trabajar con la prioridad (acumulativa entre grupos,
subgrupos, tareas y subtareas). 
