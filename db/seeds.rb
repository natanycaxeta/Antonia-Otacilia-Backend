User.destroy_all
Post.destroy_all

elizabete = User.create(name: "Elizabete", username: "bete", password: "password")
luci = User.create(name: "Luci", username: "luci", password: "password")

post1 = Post.create(name: "Diarísta", description: "Procuro diarísta para trabalhar três vezes na semana", likes: 0, address: "Formosinha", contact: 6136422262, tipo: "Emprego")
UserPost.create!(user_id: elizabete.id, post_id: post1.id)
post2 = Post.create(name: "Cozinheira", description: "Procuro cozinheira para trabalhar três vezes na semana", likes: 0, address: "Formosinha", contact: 6136422262, tipo: "Emprego")
UserPost.create!(user_id: elizabete.id, post_id: post2.id)
post3 = Post.create(name: "Assistente", description: "Procuro assistente de escritório", likes: 0, address: "Formosinha", contact: 6136422262, tipo: "Emprego")
UserPost.create!(user_id: elizabete.id, post_id: post3.id)

post4 = Post.create(name: "aulas de inglês", description: "aulas de inglês gratuitas", likes: 0, address: "Centro", contact: 6136422262, tipo: "Cursos")
UserPost.create!(user_id: luci.id, post_id: post4.id)
post5 = Post.create(name: "aulas de português", description: "aulas de português gratuitas", likes: 0, address: "Formosinha", contact: 6136422262, tipo: "Cursos")
UserPost.create!(user_id: luci.id, post_id: post5.id)
post6 = Post.create(name: "aulas de artesanato", description: "aulas de artesanato gratuitas", likes: 0, address: "Formosinha", contact: 6136422262, tipo: "Cursos")
UserPost.create!(user_id: luci.id, post_id: post6.id)

post7 = Post.create(name: "aula de Automaquiagem", description: "aula de automaquiagem", likes: 0, address: "Jardim Califórnia", contact: 6136422262, tipo: "Evento")
UserPost.create!(user_id: elizabete.id, post_id: post7.id)
post8 = Post.create(name: "Como encontrar um emprego", description: "Como encontrar um emprego, dicas de especialistas em RH", likes: 0, address: "Bela Vista", contact: 6136422262, tipo: "Evento")
UserPost.create!(user_id: elizabete.id, post_id: post8.id)
