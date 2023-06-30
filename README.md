# Api Cursos Bootcamp

Se expone un servicio que permite hacer CRUD de las entidades usuario y bootcamp, así como también asociar un usuario a un bootcamp mediante requests HTTP con el respectivo método y payload. El payload soportado es en formato JSON.


## Ejemplo de serialización de un Usuario:

{ "firstName": "Leandro", "lastName": "Pérez", "email": "leando.perez@gmail.com" }


## Ejemplo de serialización de un Bootcamp:

{ "title": "Introduciendo El Bootcamp De React.", "cue": 10, "description": "React es la librería más usada en JavaScript para el desarrollo de interfaces." }


## Ejemplo de asociación:

{  "userId": 4,  "bootcampId": 3 }



## Métodos soportados:

*GET:* obtener información de un usuario o todos los usuarios/Bootcamp

*POST:* crear un nuevo Usuario/Bootcamp

*PUT:* actualizar la información de un Usuario/Bootcamp

*DELETE:* eliminar un Usuario/Bootcamp


## Para ejecutar el servidor:

Verificar que el puerto 3000 no esté en uso

Ejecutar npm run dev desde la terminal

El servidor estará disponible en http://localhost:3000


## Rutas:

### Ejemplos de requests

#### *Para los usuarios*

*Obtener información de todos los usuarios:*
GET http://localhost:3000/api/users


*Obtener información de un usuario en particular (ID):*
GET http://localhost:3000/api/users/2


*Crear un nuevo Usuario*
POST http://localhost:3000/api/v1/users


*Actualizar la información de un usuario existente*
PUT http://localhost:3000/api/v1/users/2


*Eliminar un Usuario*
DELETE http://localhost:3000/api/v1/users/2




#### *Para los bootcamps*

*Obtener información de todos los Bootcamps:*
GET http://localhost:3000/api/v1/bootcamps


*Obtener información de todos los Bootcamps:*
GET http://localhost:3000/api/bootcamps


*Obtener información de un Bootcamp en particular (ID):*
http://localhost:3000/api/v1/bootcamps/1


*Crear un nuevo Bootcamp*
POST http://localhost:3000/api/v1/bootcamps



#### *Asociación*

*Asociar un Usuario a un bootcamp*
http://localhost:3000/api/v1/bootcamps/asociar
