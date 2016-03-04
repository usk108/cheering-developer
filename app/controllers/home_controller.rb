class HomeController < ApplicationController

  def index
    index = rand(10)
    scrpits = [
      "えらいやん。",
      "やるやん。",
      "がんばるきみ、かっこいいぞ。",
      "本気、だから。",
      "この1コミットが世界を変える。",
      "もう1コミットで…ご褒美あげちゃう",
      "がんばるきみ、かっこいいぞ。",
      "本気、だから。",
      "この1コミットが世界を変える。",
      "もう1コミットで…ご褒美あげちゃう"
    ]
    @url = (index+1).to_s+".jpg"
    @script = scrpits[index]
  end
end
