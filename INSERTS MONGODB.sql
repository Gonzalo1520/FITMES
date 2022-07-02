/*INSERTS ENFERMEDADES*/

db.Enfermedad.insertMany([{
	Nombre: "Presion Arterial",
	Gravedad: 2,
	UsuarioIds: [ObjectId("62bcf50f420375cd98c68636"), 
	ObjectId("62bd35f78e6c39c911d510a5")]
}]);

db.Enfermedad.insertMany([{
	Nombre: "Diabetes",
	Gravedad: 3,
	UsuarioIds: [ObjectId("62bd35ff8e6c39c911d510a6"), 
	ObjectId("62bd36aa8e6c39c911d510a7")]
}]);

db.Enfermedad.insertMany([{
	Nombre: "Insuficiencia Renal",
	Gravedad: 3,
	UsuarioIds: [ObjectId("62bd36d48e6c39c911d510a8"), 
	ObjectId("62bd370e8e6c39c911d510a9")]
}]);

db.Enfermedad.insertMany([{
	Nombre: "Asma",
	Gravedad: 1,
	UsuarioIds: [ObjectId("62bd3b338e6c39c911d510aa"), 
	ObjectId("62bd3b6f8e6c39c911d510ab")]
}]);

db.Enfermedad.insertMany([{
	Nombre: "Alergia",
	Gravedad: 2,
	UsuarioIds: [ObjectId("62bd3b9e8e6c39c911d510ac")]
}]);

db.Enfermedad.insertMany([{
	Nombre: "Gastritis",
	Gravedad: 1,
	UsuarioIds: [ObjectId("62bd3bbc8e6c39c911d510ad")]
}]);

/*INSERTS COMIDAS*/

db.Comida.insertOne({
	Nombre:"Ensalada Cesar",
	"Tipo Comida":"Ensaladas",
	Ingredientes:"Lechuga, Tomate, Pollo, Aceite de oliva, Zanahoria",
	Calorias: 200,
	Costo: 15
})
db.Comida.insertOne({
	Nombre:"Ensalada Clasica",
	"Tipo Comida":"Ensaladas",
	Ingredientes:"Lechuga, Tomate",
	Calorias: 100,
	Costo: 10
})
db.Comida.insertOne({
	Nombre:"Ensalada Cocida",
	"Tipo Comida":"Ensaladas",
	Ingredientes:"Zanahoria, Beterraga, Vainas, Palta",
	Calorias: 100,
	Costo: 10
})
db.Comida.insertOne({
	Nombre:"Ensalada Rusa Peruana",
	"Tipo Comida":"Ensaladas",
	Ingredientes:"Zanahoria, Beterraga, Vainas, Palta, Papa, Huevos, Limon, Mayonesa, Sal, Pimienta, Cilantro",
	Calorias: 150,
	Costo: 15
})

db.Comida.insertOne({
	Nombre:"Ensalada Griega",
	"Tipo Comida":"Ensaladas",
	Ingredientes:"Tomates, Pepino, Pimiento verde, Cebolla roja, Aceitunas negras, Queso feta, Aceite, Sal, Oregano",
	Calorias: 120,
	Costo: 18
})

db.Comida.insertOne({
	Nombre:"Tallarines al Alfredo",
	"Tipo Comida":"Pastas",
	Ingredientes:"Fideos, Salsa Blanca, Jamon, Nuez Moscada, Sal, Pimienta, Comino",
	Calorias: 600,
	Costo: 20
})
db.Comida.insertOne({
	Nombre:" Tallarines Rojos",
	"Tipo Comida":"Pastas",
	Ingredientes:" Fideos, Salsa Roja, tomate, cebolla, Sal, Pimienta, Comino",
	Calorias: 550,
	Costo: 15
})
db.Comida.insertOne({
	Nombre:" Tallarines Verdes",
	"Tipo Comida":"Pastas",
	Ingredientes:" Fideos, Salsa verde, cebolla, Sal, Pimienta, Comino",
	Calorias: 500,
	Costo: 16
})

db.Comida.insertOne({
	Nombre:"Canelones",
	"Tipo Comida":"Pastas",
	Ingredientes:" Carne molida, cebolla, pimiento verde, salsa de tomate, pasta, queso rallado, mantequilla, harina, leche, sal ,comino",
	Calorias: 650,
	Costo: 20
})

db.Comida.insertOne({
	Nombre:" Lasagna de Carne",
	"Tipo Comida":"Pastas",
	Ingredientes:" 10 laminas de lasagna, Aceite, Carne molida, Salsa Roja, Cebolla picada, apio, queso mozarella, oregano, harina, mantequilla, leche, sal, pimienta, nuez moscada",
	Calorias: 730,
	Costo: 25
})


/*INSERTS USUARIOS*/

db.Usuarios.insertOne({
	Nombres: "Pedro Picasso",
	Apellidos: "Perez Paredes",
	Edad: 21,
	Peso: 85,
	Altura: 180,
})
db.Usuarios.insertOne({
	Nombres: "Juan",
	Apellidos: "Alberto Martinez",
	Edad: 25,
	Peso: 75,
	Altura: 170,
})
db.Usuarios.insertOne({
	Nombres: "Daniel",
	Apellidos: "Perales Peredo",
	Edad: 30,
	Peso: 65,
	Altura: 169,
})
db.Usuarios.insertOne({
	Nombres: "David",
	Apellidos: "Panda Solis",
	Edad: 20,
	Peso: 115,
	Altura: 180,
})

db.Usuarios.insertOne({
	Nombres: "Diego",
	Apellidos: "Salazar Sotil",
	Edad: 25,
	Peso: 120,
	Altura: 182,
})
db.Usuarios.insertOne({
	Nombres: "Daniela",
	Apellidos: "Martinez Reboredo",
	Edad: 19,
	Peso: 55,
	Altura: 150,
})
db.Usuarios.insertOne({
	Nombres: "Melissa",
	Apellidos: "Paredes Cuba",
	Edad: 26,
	Peso: 68,
	Altura: 165,
})
db.Usuarios.insertOne({
	Nombres: "Carola",
	Apellidos: "Ramirez Retamoso",
	Edad: 22,
	Peso: 55,
	Altura: 150,
})
db.Usuarios.insertOne({
	Nombres: "Gigi",
	Apellidos: "Hadid Tesfaye",
	Edad: 33,
	Peso: 75,
	Altura: 175,
})

/*INSERTS NUTRICIONISTAS*/

db.Nutricionista.insertOne({
	Nombres: "Veronica",
	Apellidos: "Valenzuela",
	Experiencia: 3,
});

db.Nutricionista.insertMany([
{Nombres: "Camila", Apellidos: "Camarena", Experiencia: 2}, 
{Nombres: "Jordan", Apellidos: "Guerrero", Experiencia: 1},
{Nombres: "Stephen", Apellidos: "Curry", Experiencia: 4},
{Nombres: "Michael", Apellidos: "Jordan", Experiencia: 5},
]);

