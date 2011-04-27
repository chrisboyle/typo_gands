require 'sidebar'
require 'typo_gands'

GandsSidebar.view_root = File.dirname(__FILE__) + '/views'

Date::DATE_FORMATS.merge!(
	:dm_long  => Proc.new { |date| "#{date.day.ordinalize} #{date.strftime '%B'   }" },
	:dmy_long => Proc.new { |date| "#{date.day.ordinalize} #{date.strftime '%B %Y'}" }
)
