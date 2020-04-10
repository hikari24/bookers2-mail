class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	#一意のランダムトークン。この値を使って認証します
  	add_column  :users,  :confirmation_token,  :string
  	#ユーザーが確認リンクをクリックしたときのタイムスタンプ
    add_column  :users,  :confirmed_at,        :datetime
    #confirm_tokenが生成されたときのタイムスタンプ
    add_column  :users,  :confirmation_sent_at,:datetime
    add_column  :users,  :unconfirmed_email,   :string
    #email変更時の認証が不要であれば、この項目は必要ではありません。ただし、configの「reconfirmable」を「false」にする必要があります。

  end
end
