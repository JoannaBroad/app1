module ApplicationCable
	class Connection < ActionCable::Connection::Base
		identified_by :current_user

		def connect

		end

		def disconnect
			self.current_user = find_verified_user
		end

		protected

		def find_verified_user
			if verifyed_user = request.env['warden'].user
				verifyed_user
			else
				reject_unautherorized_conection
   			end
		end
	end
end
