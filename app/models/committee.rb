class Committee < ActiveRecord::Base
	set_table_name :committee
	default_scope order('year DESC, id')
end
