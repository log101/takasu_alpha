# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
User.create({
              id: 1,
              name: "furkan",
              email: "furkan",
              description: "Kitap okumayı ve müzik dinlemeyi severim, yazılımla uğraşıyorum. Üniversitede öğrenciyim, üsküdar sahile çok yakın bir yerde oturuyorum. En sevdiğim anime Cowboy Bebop.",
              password_digest: BCrypt::Password.create("furkan")
            })
User.create({
              id: 2,
              name: "erdem",
              email: "erdem",
              description: "Hayatı boyun uzaya çıkmak istemişimdir. Bu dünyada sorduğum soruların cevapları belki orada yukarıdadır. Onun dışında manga okumayı seviyorum, özellikle spor magalarını!",
              password_digest: BCrypt::Password.create("erdem"),
            })
Manga.create({
               title: "Akatsuki no Yona",
               genre: "Action",
               description: "Yona's perfect world comes crashing down when a heinous act of treason threatens to erase all that she holds dear, including her birthright as the princess of Kouka. Left with no one to trust but her childhood friend and loyal bodyguard Son Hak, she is forced to flee the palace. Faced with the perils of surviving in the wild with a target on her back, Yona realizes that her kingdom is no longer the safe haven it once was.",
               volumes: "1-13",
               user_id: 1,
               image_url: "akatsuki-no-yona.jpg"
             })
Manga.create({
               title: "Berserk",
               genre: "Gore",
               description: "Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.",
               volumes: "1-4, 6-9",
               user_id: 2,
               image_url: "berserk.jpg",
             })
Manga.create({
               title: "Ansatsu Kyoushitsu",
               genre: "Action",
               description: "Adapted from the humorous hit manga by Yuusei Matsui, Ansatsu Kyoushitsu tells the story of these junior high pupils as they polish their assassination skills and grow in order to stand strong against the oppressive school system, their own life problems, and one day, Koro-sensei.",
               volumes: "1-21",
               user_id: 1,
               image_url: "ansatsu.jpg",
             })
Manga.create({
               title: "GTO",
               genre: "Action",
               description: "Great Teacher Onizuka follows the incredible, though often ridiculous, antics of the titular teacher as he attempts to outwit and win over the cunning Class 3-4 that is determined to have him removed from the school. However, other obstacles present themselves throughout—including the frustrated, balding vice principal, Hiroshi Uchiyamada; old enemies from his biker days; and his own idiotic teaching methods. But Eikichi fights it all whilst trying to help his students, romance fellow teacher Azusa Fuyutsuki, and earn his self-proclaimed title.",
               volumes: "1-2",
               user_id: 2,
               image_url: "gto.jpg",
             })
Manga.create({
               title: "Haikyuu!",
               genre: "Sports",
               description: "Great Teacher Onizuka follows the incredible, though often ridiculous, antics of the titular teacher as he attempts to outwit and win over the cunning Class 3-4 that is determined to have him removed from the school. However, other obstacles present themselves throughout—including the frustrated, balding vice principal, Hiroshi Uchiyamada; old enemies from his biker days; and his own idiotic teaching methods. But Eikichi fights it all whilst trying to help his students, romance fellow teacher Azusa Fuyutsuki, and earn his self-proclaimed title.",
               volumes: "1-2",
               user_id: 1,
               image_url: "haikyuu.jpg",
             })
Manga.create({
               title: "Kimetsu no Yaiba",
               genre: "Fantasy",
               description: "When he finally makes his way home, Tanjirou's worst nightmare comes true. His entire family has been brutally slaughtered with the sole exception of his sister Nezuko, who has turned into a flesh-eating demon. Engulfed in hatred and despair, Tanjirou desperately tries to stop Nezuko from attacking other people, setting out on a journey to avenge his family and find a way to turn his beloved sister back into a human.",
               volumes: "1-3",
               user_id: 2,
               image_url: "kimetsu.jpg",
             })
Manga.create({
               title: "Made In Abyss",
               genre: "Action",
               description: "One day, Riko's life changes when she meets a strange robot called Reg, who seems to appear from within the Abyss. Believing this to be a sign from her mother stuck at the bottom of the Abyss, Riko descends into its depths with Reg, ready to confront all the dangers within it.",
               volumes: "1-2, 6-9",
               user_id: 1,
               image_url: "made-in-abyss.jpg",
             })
Manga.create({
               title: "Monster",
               genre: "Drama",
               description: "Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.",
               volumes: "1-3",
               user_id: 2,
               image_url: "monster.jpg",
             })
Manga.create({
               title: "Kingdom",
               genre: "Action, Drama",
               description: "Although initially on bad terms, Xin and Zheng become comrades and start on a path filled with trials and bloodshed. Zheng's objective is to bring all the warring states under Qin, and Xin seeks to climb to the very top of the army ranks. Against a backdrop of constant tactical battle between states and great political unrest, both outside and within the palace, the two endeavor towards their monumental ambitions that will change history forever.",
               volumes: "1-14",
               user_id: 1,
               image_url: "kingdom.jpg",
             })
Manga.create({
               title: "Full Metal Alchemist",
               genre: "Action",
               description: "Years later, the young alchemists travel across the country looking for the Philosopher's Stone, in the hopes of recovering their old bodies with its power. However, their quest for the fated stone also leads them to unravel far darker secrets than they could ever imagine.",
               volumes: "24-27",
               user_id: 2,
               image_url: "alchemist.jpg",
             })