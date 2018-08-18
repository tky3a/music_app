
# 5.times do |i|
#   users = User.create(username: "test User#{i}",
#                       email: "testuser#{i}@example.com",
#                       password: "hogehoge",
#                       password_confirmation: "hogehoge")
# end

  video_test1 = Video.create(youtube_id: "m2bzXSKous4",
                        artist_name: "アルカラ",
                        music_name: "サースティサースティサースティガール")

  video_test2 = Video.create(youtube_id: "WJW7kS9AAI4",
                        artist_name: "ポルカドットスティングレイ",
                        music_name: "ICHIDAIJI")

  video_test3 = Video.create(youtube_id: "WgMjUYVc0-g",
                        artist_name: "work from tomorrow",
                        music_name: "ヒーロー")

  video_test4 = Video.create(youtube_id: "F3tnfgZhJME",
                        artist_name: "yonige",
                        music_name: "アボカド")

  video_test5 = Video.create(youtube_id: "d6i4AtCxrDo",
                        artist_name: "Hump Back",
                        music_name: "拝啓、少年よ")

  video_test6 = Video.create(youtube_id: "Kcn3mG9pAcM",
                        artist_name: "the satellites",
                        music_name: "命の唄")

  video_test7 = Video.create(youtube_id: "-foqDiKP6JY",
                        artist_name: "Hump Back",
                        music_name: "ゆれる")

  video_test8 = Video.create(youtube_id: "hA-HJmESJyw",
                        artist_name: "Ivy to Fraudulent Game",
                        music_name: "she see sea")

  category_test1 = Category.create(name: "Pop")
  category_test1 = Category.create(name: "Rock")
  category_test2 = Category.create(name: "Gt Rock")
  category_test3 = Category.create(name: "Emo")
  category_test4 = Category.create(name: "Post Rock")
  category_test6 = Category.create(name: "Progre")
  category_test6 = Category.create(name: "Alternative")

#リレーションシップ
  VideoCategory.create(video_id: 1, category_id: 6)
  VideoCategory.create(video_id: 1, category_id: 7)
  VideoCategory.create(video_id: 2, category_id: 3)
  VideoCategory.create(video_id: 3, category_id: 3)
  VideoCategory.create(video_id: 3, category_id: 7)
  VideoCategory.create(video_id: 4, category_id: 1)
  VideoCategory.create(video_id: 4, category_id: 3)
  VideoCategory.create(video_id: 4, category_id: 4)
  VideoCategory.create(video_id: 5, category_id: 2)
  VideoCategory.create(video_id: 5, category_id: 4)
  VideoCategory.create(video_id: 6, category_id: 2)
  VideoCategory.create(video_id: 6, category_id: 3)
  VideoCategory.create(video_id: 7, category_id: 3)
  VideoCategory.create(video_id: 7, category_id: 4)
  VideoCategory.create(video_id: 8, category_id: 5)
  VideoCategory.create(video_id: 8, category_id: 6)
  VideoCategory.create(video_id: 8, category_id: 7)


  comments = Comment.create(commenter: "test", body: "test")
  #
  # 50+
  # ミックスリスト - yonige -アボカド-【Official Video】
  # YouTube
  #
  # 3:56
  # yonige「センチメンタルシスター」Official Music Video
  # JMSTV1
  # 視聴回数 159万 回
  #
  #
  # 4:04
  # Rick Rack 「ソルジャーガールズ」
  # Rick Rack
  # 視聴回数 107万 回
  #
  #
  # 4:59
  # yonige -さよならアイデンティティー-【Official Video】
  # JMSTV1
  # 視聴回数 472万 回
  #
  #
  # 3:14
  # yonige「リボルバー」official music video
  # yonige Official Channel
  # 視聴回数 16万 回
  # 新着
  #
  #
  # 4:39
  # yonige「さよならプリズナー」【Official Video】
  # JMSTV1
  # 視聴回数 217万 回
  #
  #
  # 5:18
  # My Hair is Bad - 元彼氏として(Official Video)
  # the ninth apollo
  # 視聴回数 248万 回
  #
  #
  # 4:33
  # ずっと真夜中でいいのに。『秒針を噛む』MV
  # ずっと真夜中でいいのに。
  # 視聴回数 172万 回
  #
  # ポルカドットスティングレイ「テレキャスター･ストライプ」MV
  # ポルカドットスティングレイ
  # 視聴回数 1,109万 回
  #
  # yonige / our time city Official Video
  # JMSTV1
  # 視聴回数 74万 回
  #
  # ネクライトーキー MV「オシャレ大作戦」
  # NecryTalkie Official
  # 視聴回数 82万 回
  #
  # sumika / ふっかつのじゅもん【Music Video】
  # sumikainc
  # 視聴回数 897万 回
  #
  # おいしくるメロンパン「色水」
  # Oisicle Melonpan
  # 視聴回数 197万 回
  #
  # FOMARE - Lani 【OFFICIAL MUSIC VIDEO】
  # JMSTV1
  # 視聴回数 41万 回
  #
  # サカナクション / 新宝島　-BEST ALBUM「魚図鑑」(3/28release)-
  # NFRecords sakanaction
  # 視聴回数 6,873万 回
  #
  # yonige「ワンルーム」official music video
  # yonige Official Channel
  # 視聴回数 74万 回
  #
  #
  # 尾崎世界観作詞・作曲FM802「栞」MV フルver.（FM802 × TSUTAYA ACCESS! キャンペーンソング）
  # FM802
  # 視聴回数 534万 回
  #
