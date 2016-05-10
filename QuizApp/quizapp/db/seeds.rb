Answer.create!([
  {textAnswer: "Representan a una deidad", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Eran juguetes", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Representan a príncipes", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Se desconoce", active: true, imgURL: nil, pregunta_id: 1, correct: true},
  {textAnswer: "Sacerdotes", active: true, imgURL: nil, pregunta_id: 2, correct: true},
  {textAnswer: "Comerciantes", active: true, imgURL: nil, pregunta_id: 2, correct: false},
  {textAnswer: "Dioses", active: true, imgURL: nil, pregunta_id: 2, correct: false},
  {textAnswer: "Jugadores de pelota", active: true, imgURL: nil, pregunta_id: 2, correct: false},
  {textAnswer: "Xochimilco", active: true, imgURL: nil, pregunta_id: 3, correct: false},
  {textAnswer: "Chalco", active: true, imgURL: nil, pregunta_id: 3, correct: false},
  {textAnswer: "Texcoco", active: true, imgURL: nil, pregunta_id: 3, correct: true},
  {textAnswer: "Cuautitlan", active: true, imgURL: nil, pregunta_id: 3, correct: false},
  {textAnswer: "1519", active: true, imgURL: nil, pregunta_id: 4, correct: false},
  {textAnswer: "1521", active: true, imgURL: nil, pregunta_id: 4, correct: true},
  {textAnswer: "1524", active: true, imgURL: nil, pregunta_id: 4, correct: false},
  {textAnswer: "Nunca se rindieron", active: true, imgURL: nil, pregunta_id: 4, correct: false},
  {textAnswer: "San Luis Potosí", active: true, imgURL: nil, pregunta_id: 5, correct: false},
  {textAnswer: "Guanajuato", active: true, imgURL: nil, pregunta_id: 5, correct: true},
  {textAnswer: "Estado de México", active: true, imgURL: nil, pregunta_id: 5, correct: false},
  {textAnswer: "Jalisco", active: true, imgURL: nil, pregunta_id: 5, correct: false},
  {textAnswer: "Fundamentos de una Nación", active: true, imgURL: nil, pregunta_id: 6, correct: false},
  {textAnswer: "Rendimiento de la Opresión", active: true, imgURL: nil, pregunta_id: 6, correct: false},
  {textAnswer: "Cimientos de Superación", active: true, imgURL: nil, pregunta_id: 6, correct: false},
  {textAnswer: "Sentimientos de la Nación", active: true, imgURL: nil, pregunta_id: 6, correct: true},
  {textAnswer: "1872", active: true, imgURL: nil, pregunta_id: 7, correct: true},
  {textAnswer: "1887", active: true, imgURL: nil, pregunta_id: 7, correct: false},
  {textAnswer: "1907", active: true, imgURL: nil, pregunta_id: 7, correct: false},
  {textAnswer: "1910", active: true, imgURL: nil, pregunta_id: 7, correct: false},
  {textAnswer: "Ejército Constitucionalista", active: true, imgURL: nil, pregunta_id: 8, correct: true},
  {textAnswer: "Armada Cuatro Ciénegas", active: true, imgURL: nil, pregunta_id: 8, correct: false},
  {textAnswer: "Dorados", active: true, imgURL: nil, pregunta_id: 8, correct: false},
  {textAnswer: "División Huertista", active: true, imgURL: nil, pregunta_id: 8, correct: false},
  {textAnswer: "Pablo González", active: true, imgURL: nil, pregunta_id: 9, correct: false},
  {textAnswer: "Heliodoro Copado", active: true, imgURL: nil, pregunta_id: 9, correct: false},
  {textAnswer: "Emiliano Zapata", active: true, imgURL: nil, pregunta_id: 9, correct: true},
  {textAnswer: "Felipe Ángeles", active: true, imgURL: nil, pregunta_id: 9, correct: false},
  {textAnswer: "Una república presidencialista", active: true, imgURL: nil, pregunta_id: 10, correct: false},
  {textAnswer: "Un imperio", active: true, imgURL: nil, pregunta_id: 10, correct: true},
  {textAnswer: "Una dictadura militar", active: true, imgURL: nil, pregunta_id: 10, correct: false},
  {textAnswer: "Una república unipartidista", active: true, imgURL: nil, pregunta_id: 10, correct: false},
])
Exposicion.create!([
  {name: "Permanente MHM", description: "Piezas históricas que hablan del devenir nacional desde tiempos prehispánicos hasta el siglo XX.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/05/DSC_6504.jpg", etype: "permanente", active: true, museo_id: 1},
  {name: "Permanente MUNE", description: "Colección que presenta el pasado común que tienen los estados de Tamaulipas, Nuevo León, Coahuila y Texas.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/DSC_5883.jpg", etype: "permanente", active: true, museo_id: 2},
  {name: "Permanente Palacio", description: "Museo de sitio que muestra la historia de Nuevo León, su gobierno y sociedad.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/expo_palacio_6.jpg", etype: "permanente", active: true, museo_id: 3}
])
Museo.create!([
  {name: "Museo de Historia Mexicana", description: "La exhibición histórica más importante en el norte de México. Conformada por más de 1,200 piezas, que ilustran distintos aspectos de la vida en México desde la época prehispánica hasta el siglo XX.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_mhm_8.jpg"},
  {name: "Museo del Noreste", description: "MUNE proyecta en su montaje permanente la historia regional que comprende los estados de Nuevo León, Coahuila, Tamaulipas y Texas, desde tiempos remotos hasta nuestros días.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_mune_2.jpg"},
  {name: "Museo del Palacio", description: "Sitio histórico que preside la vida de los nuevoleoneses y en donde es posible reflexionar acerca de los diversos procesos que forjaron a la actual sociedad de este Estado.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_palacio_3.jpg"}
])
Pregunta.create!([
  {description: "¿Qué uso tenían las estatuillas olmecas de niño jaguar?", extraInfo: "A los olmecas se les llama frecuentemente “cultura madre”, no porque hayan sido los primeros habitantes del territorio ni porque todos seamos sus descendientes, sino porque fueron el primer pueblo en alcanzar un status realmente relevante.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/ma_2_nino.jpg", active: true, sala_id: 1},
  {description: "¿Qué ocupación tendrían los personajes representados en la estela de la cultura maya llamada Dintel?", extraInfo: "Lo que podemos ver en ella son dos personas que evidentemente ocupan un rango alto (posiblemente sacerdotes o nobles). ¿Cómo lo sabemos? Por los adornos que llevan. Los tocados, collares, aretes y demás ornamentación era símbolo de distinción entre ellos, de modo que una persona común y corriente no estaba autorizado a vestir de manera suntuosa, ni a utilizar accesorios llamativos.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/ma_17_dintel.jpg", active: true, sala_id: 1},
  {description: "¿En qué lago se encontraba el islote que sirvió de base para fundar Tenochtitlan?", extraInfo: "De todas las civilizaciones prehispánicas, tal vez la más sonada es la azteca o mexica. La maqueta que tenemos frente a nosotros es el Recinto Sagrado de la Gran Tenochtitlán, la capital de su imperio. Esta ciudad fue construida sobre un islote en medio del Lago de Texcoco, y expandida encima del agua gracias a las chinampas.", imgURL: "http://www.3museos.com/wp-content/uploads/2016/04/tenochtitlan.jpg", active: true, sala_id: 1},
  {description: "¿En qué año se dio la rendición de los mexicas?", extraInfo: "El desembarco de los conquistadores españoles fue en 1519, la caída de Tenochtitlan en 1521 y la muerte de Cuauhtemoc en 1524.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/05/prev.jpg", active: true, sala_id: 1},
  {description: "¿En qué estado se encuentra la mina de '"'La Valenciana'"'?", extraInfo: "La Valenciana es una mina que aún existe; sin embargo, su época de esplendor se dio en el virreinato, cuando producía por sí sola más plata que todas las minas del Virreinato de Perú juntas.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/mv_32_cofre.jpg", active: true, sala_id: 1},
  {description: "¿Cómo se llama el documento escrito por Morelos?", extraInfo: "Al morir Hidalgo, fue Morelos quien mantuvo viva la llama de la pelea, e incluso escribió un documento donde llamaba a la creación de una nación nueva, donde los puestos de gobierno fueran elegidos por el pueblo, y donde no existiera la esclavitud ni la distinción de castas.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/s19_6_morelos.jpg", active: true, sala_id: 1},
  {description: "¿En qué año murió Benito Juárez?", extraInfo: "Las máscaras mortuorias (o funerarias) se crean para conservar la expresión del difunto.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/s19_30_mascara.jpg", active: true, sala_id: 1},
  {description: "¿Cómo se llamó el ejército lidereado por Venustiano Carranza?", extraInfo: "El iniciador de la Revolución, Francisco I. Madero, fue traicionado y asesinado. Ante tal hecho, Venustiano Carranza, que era gobernador de Coahuila, reunió a los ejércitos de gran parte del país.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/s20_16_bandera.jpg", active: true, sala_id: 1},
  {description: "Lider del Ejército Libertador del Sur", extraInfo: "Su causa principal fue lograr una reforma Agraria.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/07/s20_18_emiliano.jpg", active: true, sala_id: 1},
  {description: "Cuando se firmó el Acta de Independencia, México quedó constituido como:", extraInfo: "Con el Abrazo de Acatempan, la unión de la guerrilla liderada por Vicente Guerrero y las fuerzas virrecinales dirigidas por Agustín de Iturbide dieron paso al fin de la lucha de independencia. La firma del acta de independencia el 27 de septiembre de 1821, proclamaba a México en un imperio encabezado por Agustín de Iturbide.", imgURL: "http://img.terra.com.mx/galeria_de_fotos/images/286/570541.jpg", active: true, sala_id: 1},
])
Sala.create!([
  {number: 130, name: "Siglo XIX", mapImgURL: "http://www.3museos.com/wp-content/uploads/2015/07/s19_1_fusilamiento.jpg", description: "La sala siglo XIX muestra los hechos más relevantes que dieron pie a la transición del Virreinato de la Nueva España hasta la consolidación de una república, pasando por la creación de dos imperios, invasiones extranjeras, guerras internas y la instauración de una dictadura.", exposicion_id: 1}
])
