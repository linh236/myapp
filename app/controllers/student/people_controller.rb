module Student
  class PeopleController < StudentController
    skip_before_action :verify_authenticity_token

    def index
      @people = People.includes(:user).where(user_id: current_user.id)
      @people_id = current_user.id
    end

    def update
      people = People.where(user_id: params[:id])
      if people.update(person_name: params[:person_name],code: params[:code],sex: params[:sex],born: params[:born],address: params[:address],telephone: params[:telephone])
        render json:{data:people}
      else
        render json:{data:people.errors}
      end
    end

  end
end
