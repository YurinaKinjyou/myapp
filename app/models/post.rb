class Post < ApplicationRecord
    # validates :content, {presence: true, length: {maximum: 140}}
    validate :add_error
 
    def add_error
        # nameが空のときにエラーメッセージを追加する
        if content.blank?
        errors[:base] << "商品名は必ず入力して下さい"
        end
    end
end
