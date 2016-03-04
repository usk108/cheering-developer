class HomeController < ApplicationController

  def index

    str = "origin https://github.com/usk108/cheering-developer.git (fetch)"
    result = str.scan URI.regexp
    @next_url = result[0][0].to_s + "://" + result[0][3].to_s + result[0][6].to_s

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

  def show
    @next_url = params[:url]
    # message = params[:url]
    # result = message.scan URI.regexp
    # @next_url = result[0][0].to_s + "://" + result[0][3].to_s + result[0][6].to_s

    index = rand(10)
    scrpits = [
      "えらいやん。",
      "やるやん。",
      "がんばるきみ、かっこいいぞ。",
      "大丈夫、プラスだよ。",
      "この1コミットが世界を変える。",
      "もう1コミットで…ご褒美あげちゃう",
      "がんばるきみ、かっこいいぞ。",
      "今日からおまえは富士山だ。",
      "この1コミットが世界を変える。",
      "もう1コミットで…ご褒美あげちゃう"
    ]
    @url = (index+1).to_s+".jpg"
    @script = scrpits[index]
  end
end
