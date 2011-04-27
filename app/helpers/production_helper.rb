module ProductionHelper
	def dates_condensed(production)
		d0, d1 = *production.dates
		if not d0 or not d1 then return nil end
		if (production.year == d0.year) and (d0.year == d1.year) and (d0.month == d1.month)
			"#{d0.day.ordinalize}-#{d1.to_date.to_s(:dm_long)}"
		else
			"#{d0.to_date.to_s(:dmy_long)} to #{d1.to_date.to_s(:dmy_long)}"
		end
	end

	def credits_table(people)
		return unless people.any?
		content_tag :table, :class => 'credits' do
			people.group_by(&:role).collect do |r,l|
				(content_tag :tr do
					content_tag(:th, r, :scope => 'row', :rowspan => l.count, :valign => 'top') +
					content_tag(:td, l.shift.name)
				end) +
				(l.collect do |p|
					content_tag :tr do
						content_tag :td, p.name
					end
				end.join)
			end.join
		end
	end
end
