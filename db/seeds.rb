

user1 = User.create(name: "luciano", email: "luciano", password: "luciano")
user2 = User.create(name: "pepe", email: "pepe", password: "pepe")
user3 = User.create(name: "lulu", email: "lulu", password: "lulu")
user4 = User.create(name: "juan", email: "juan", password: "juan")
user5 = User.create(name: "lupe", email: "lupe", password: "lupe")
user6 = User.create(name: "paco", email: "paco", password: "paco")

game_1 = Game.create(user_id: user1.id, submarino: 1, ganador: "Almost!")
game_2 = Game.create(user_id: user2.id, submarino: 2, ganador: "Winner!")
game_3 = Game.create(user_id: user1.id, submarino: 1, ganador: "Almost!")
game_4 = Game.create(user_id: user3.id, submarino: 1, ganador: "Almost!")
game_5 = Game.create(user_id: user4.id, submarino: 2, ganador: "Winner!")
game_6 = Game.create(user_id: user5.id, submarino: 1, ganador: "Almost!")
game_7 = Game.create(user_id: user6.id, submarino: 1, ganador: "Almost!")
game_8 = Game.create(user_id: user1.id, submarino: 1, ganador: "Almost!")
game_9 = Game.create(user_id: user1.id, submarino: 2, ganador: "Winner!")
