class AgregaAtrActivado < ActiveRecord::Migration
  def change
  	add_column :usuarios, :activado, :boolean, default: false
  end
end
