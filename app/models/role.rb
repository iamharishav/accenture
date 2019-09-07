class Role < ApplicationRecord

	REPORTING_STATUSES = [-1, 0, 1] # -1 Can not report any employee | 0 Can only report and can not be reporting manager | 1: Can report as well and can be reporting manager

	validates_inclusion_of :reporting_status, :in => REPORTING_STATUSES
	validates :name, :presence => true

end
