# frozen_string_literal: true

class AddIconToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :icon, :string
  end
end
