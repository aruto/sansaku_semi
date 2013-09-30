class ModifyMembers < ActiveRecord::Migration
  def change
    # パスワードを暗号化するhas_secure_passwordに対応したカラム名に変更
    rename_column :members, :hashed_password, :password_digest
  end
end
