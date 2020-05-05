class OrganizationsController < ApplicationController

    def index
        render json: Organization.all.as_json
    end

end
