class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
private
def project
    @project_global ||= Project.find(params[:project_id]) || :false
end
helper_method :budget

def project_required
    unless project.is_a?(Project)
        raise ActiveRecord::RecordNotFound, "Project required but not found"
    end
end




end
