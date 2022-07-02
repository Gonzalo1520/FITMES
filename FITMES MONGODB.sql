
db.createCollection("Usuarios", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            description: "Documento que describe a los Usuarios.",
            required: ["Nombres", "Apellidos", "Edad", "Peso", "Altura"],
            properties: {
                "Nombres": {
                    bsonType: "string",
                    description: "Nombres del Usuario.",
                },
                "Apellidos": {
                    bsonType: "string",
                    description: "Apellidos del Usuario."
                },
                "Edad": {
                    bsonType: "int",
                    description: "Edad del Usuario"
                },
                "Peso": {
                    bsonType: "int",
                    description: "Peso del Usuario"
                },
                "Altura": {
                    bsonType: "int",
                    description: "Altura del Usuario"
				},
            }
        }
    }
})

db.createCollection("Nutricionista", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            description: "Documento que describe a los Nutricionistas.",
            required: ["Nombres", "Apellidos", "Experiencia"],
            properties: {
                "Nombres": {
                    bsonType: "string",
                    description: "Nombres del Nutricionista.",
                },
                "Apellidos": {
                    bsonType: "string",
                    description: "Apellidos del Nutricionista."
                },
                "Experiencia": {
                    bsonType: "int",
                    description: "Experiencia del Nutricionista."
                },
            }
        }
    }
})

db.createCollection("Enfermedad", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            description: "Descripci n de la Enfermedad.",
            required: ["Nombre", "Gravedad", "UsuarioIds"],
            properties: {
                "Nombre": {
                    bsonType: "string",
                    description: "Nombre de la Enfermedad.",
                },
                "Gravedad": {
                    bsonType: "int",
                    description: "Gravedad de la Enfermedad."
                },
                "UsuarioIds": {
                    bsonType: "array",
                    description: "Lista de los usuarios que poseen una enfermedad y estan registrados.",
                    minItems: 1,
                    uniqueItems: true,
                    items: {
                        bsonType: "objectId",
                        description: "El Id que identifica a los Usuarios de la coleccion."
					}
                }
            }
        }
    }
})

db.createCollection("Comida", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            description: "Documento que describe a los Usuarios.",
            required: ["Nombre", "Tipo Comida", "Ingredientes", "Calorias", "Costo"],
            properties: {
                "Nombre": {
                    bsonType: "string",
                    description: "Nombre de la comida.",
                },
                "Tipo Comida": {
                    bsonType: "string",
                    description: "Tipo de comida.",
                },
                "Ingredientes": {
                    bsonType: "string",
                    description: "Nombre de los ingredientes.",
                },
                "Calorias": {
                    bsonType: ["double", "int"],
                    description: "Cantidad de Calorias",
					minimum:0,
					maximum:10000,
				},
                "Costo": {
                    bsonType: ["double", "int"],
                    description: "Costo de la comida",
					minimum:0,
					maximum:1000,
				}
            }
        }
    }
})