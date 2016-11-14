class WelcomeController < ApplicationController
	def index
			@projects = Project.all
			public_dir = Rails.root.join("public")

			project = params['project'] ? params['project'] : "miaokan"
			type = params['type'] ? params['type'] : "ipa"

			time = Time.new

			@months = Array(0..12);
			@ipas = Dir.glob("#{public_dir}/#{project}/#{type}/#{time.year}/#{time.month}/*.*")
	end
end
