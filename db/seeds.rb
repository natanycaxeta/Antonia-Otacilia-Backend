User.destroy_all
Post.destroy_all

elizabete = User.create(name: "Elizabete", username: "bete", password: "password")
luci = User.create(name: "Luci", username: "luci", password: "password")

Post.create(name: "Diarísta", description: "Procuro diarísta para trabalhar três vezes na semana", likes: 0, address: "Formosinha", tipo: "Emprego")
Post.create(name: "Cozinheira", description: "Procuro cozinheira para trabalhar três vezes na semana", likes: 0, address: "Formosinha", tipo: "Emprego")
Post.create(name: "Assistente", description: "Procuro assistente de escritório", likes: 0, address: "Formosinha", tipo: "Emprego")

Post.create(name: "aulas de inglês", description: "aulas de inglês gratuitas", likes: 0, address: "Centro", tipo: "Cursos")
Post.create(name: "aulas de português", description: "aulas de português gratuitas", likes: 0, address: "Formosinha", tipo: "Cursos")
Post.create(name: "aulas de artesanato", description: "aulas de artesanato gratuitas", likes: 0, address: "Formosinha", tipo: "Cursos")

Post.create(name: "aula de Automaquiagem", description: "aula de automaquiagem", likes: 0, address: "Jardim Califórnia", tipo: "Evento")
Post.create(name: "Como encontrar um emprego", description: "Como encontrar um emprego, dicas de especialistas em RH", likes: 0, address: "Bela Vista", tipo: "Evento")
