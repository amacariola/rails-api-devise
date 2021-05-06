class Api::UsersController < Api::BaseController

   before_action :find_user, only: %w[show]

   def show 
       render_jsonapi_response(@user)
   end

   private
  
   def find_user
     begin
      @user = User.find(params[:id])
     rescue ActiveRecord::RecordNotFound
      render json: {
                     "message":"Record not found"
                   }
     end
   end


end
