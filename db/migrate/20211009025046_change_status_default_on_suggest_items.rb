class ChangeStatusDefaultOnSuggestItems < ActiveRecord::Migration[5.2]
  def change
    change_column_default :suggest_items, :status, from: nil, to: '0'
  end
end
