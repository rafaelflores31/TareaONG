class PurposesController < ApplicationController
	def create
		@purpose = Purpose.new(purpose_params)

		if @purpose.save
			if request.xhr?
				render partial: "purposes/purpose", locals: {purpose: @purpose}, status: 200
			else
				redirect_to nurseries_path(@skill.nursery)
			end
		else
			render json: @purpose.errors.full_messages.to_json, status: 422
		end
	end

	private

		def purpose_params
			params.require(:purpose).permit!
		end
end