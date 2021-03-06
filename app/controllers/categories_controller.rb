class CategoriesController < ApplicationController
  #実装メモ：video_categoriesテーブル（中間テーブル）を作成して、多対多の関係にする（has_many through）

  def index
  end

  # def show
  #   @category = Category.find_by(id: params[:id])
  #   @search = Video.ransack(params[:q])
  #   @categories = Category.all
  #   @videos = @search.result(distinct: true) #重複していないものを取り出す
  # end
  def show
  @category = Category.find(params[:id]) #categoryのIDを取得
  @search = Video.ransack(params[:q]) #videoの全てのデータを取得
  @categories = Category.all
  @videos = @search.result(distinct: true).has_category_id_in(params[:id]) #重複していないものを取り出す
end
end

# private
# def category_params
#   params.require(:category).parmit(:name, { video_ids: []} )
# end
