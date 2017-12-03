class Indexpage < ApplicationRecord
	EMAIL = 'dbachinin@ya.ru'
	validates :email_is_true

private
def email_is_true
		return true if email.include?(EMAIL)
	end
end
