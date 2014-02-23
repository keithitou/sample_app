class User
	attr_accessor :name, :email, :password, :sso_id, :sso_pwd

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
		@password = attributes[:password]
		@sso_id = attributes[:sso_id]
		@sso_pwd = attributes[:sso_pwd]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end