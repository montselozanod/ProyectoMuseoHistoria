Answer.create!([
  {textAnswer: "Revolucion Mexicana", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Revolucion Francesa", active: true, imgURL: nil, pregunta_id: 1, correct: true},
  {textAnswer: "Revolucion Rusa", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Revolucion Cubana", active: true, imgURL: nil, pregunta_id: 1, correct: false},
  {textAnswer: "Espana", active: true, imgURL: nil, pregunta_id: 2, correct: true},
  {textAnswer: "Mexico", active: true, imgURL: nil, pregunta_id: 2, correct: false},
  {textAnswer: "Colombia", active: true, imgURL: nil, pregunta_id: 2, correct: false},
  {textAnswer: "Argentina", active: true, imgURL: nil, pregunta_id: 2, correct: false}
])
Exposicion.create!([
  {name: "Telas", description: "Telas representativas de cada siglo", imgURL: "http://thumbs.dreamstime.com/x/telas-tradicionales-13006097.jpg", etype: "temporal", active: true, museo_id: 1},
  {name: "Autos", description: "Autos representativos de cada siglo", imgURL: "http://1.bp.blogspot.com/-ocQuwQ_5NEE/UGSKNSe1FAI/AAAAAAAAAy0/d6jk8vQvQ4E/s1600/fotos-autos-antiguos-clasicos.jpg", etype: "temporal", active: true, museo_id: 1}
])
Museo.create!([
  {name: "Museo de Historia Mexicana", description: "La exhibición histórica más importante en el norte de México. Conformada por más de 1,200 piezas, que ilustran distintos aspectos de la vida en México desde la época prehispánica hasta el siglo XX.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_mhm_8.jpg"},
  {name: "Museo del Noreste", description: "MUNE proyecta en su montaje permanente la historia regional que comprende los estados de Nuevo León, Coahuila, Tamaulipas y Texas, desde tiempos remotos hasta nuestros días.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_mune_2.jpg"},
  {name: "Museo del Palacio", description: "Sitio histórico que preside la vida de los nuevoleoneses y en donde es posible reflexionar acerca de los diversos procesos que forjaron a la actual sociedad de este Estado.", imgURL: "http://www.3museos.com/wp-content/uploads/2015/10/fachada_palacio_3.jpg"}
])
Pregunta.create!([
  {description: "Con que revolucion evoluciono la moda de este siglo?", extraInfo: "Con la revolucin francesa la moda se populariza y los hombres inventan pantalones de tubo y las mujeres tienden a ponerse vestidos que realcen ms su silueta.", imgURL: "http://www.biografiasyvidas.com/monografia/luis_xiv/fotos/luis_xiv_1704.jpg", active: true, sala_id: 1},
  {description: "Donde se determino el concepto bata?", extraInfo: "BATA: Recibio este nombre en Espana. Son largos y abiertos por delante. Se caracteriza por pliegues planos que parten del cuello, recorren toda la espalda y termina en una cola. Aparece alrededor de 1780.", imgURL: "http://4.bp.blogspot.com/_Zqlj8XWOEqA/S-w66abo7cI/AAAAAAAAACY/_IFnsNaIQeI/s1600/bata.JPG", active: true, sala_id: 1}
])
Sala.create!([
  {number: 130, name: "Telas del siglo XVIII", mapImgURL: "https://comoanilloaldedal.files.wordpress.com/2014/03/2.jpg", description: "Telas representativas del siglo 18", exposicion_id: 1},
  {number: 140, name: "Telas siglo XX", mapImgURL: "https://comoanilloaldedal.files.wordpress.com/2014/03/2.jpg", description: "Telas representativas del siglo 20", exposicion_id: 1}
])
