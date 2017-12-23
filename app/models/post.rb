class Post < ApplicationRecord
    # validates :content, {presence: true, length: {maximum: 140} message: ""}
    validates :content, presence: {message: "入力されてないよ！"}
    validates :content, length: {maximum: 140, message: "140字以内に入力してね！"}
    # validate :add_error
 
    # def add_error
    #     # nameが空のときにエラーメッセージを追加する
    #     if content.blank?
    #     errors[:base] << "商品名は必 ず入力して下さい"
    #     end
    # end
end
