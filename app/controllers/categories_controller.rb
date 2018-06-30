class CategoriesController < ApplicationController
  #実装メモ：video_categoriesテーブル（中間テーブル）を作成して、多対多の関係にする（has_many through）

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
  end
end

# private
# def category_params
#   params.require(:category).parmit(:name, { video_ids: []} )
# end
