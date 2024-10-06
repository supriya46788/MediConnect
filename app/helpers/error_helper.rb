module ErrorHelper 
  def show_errors_for(object)
    render partial: 'shared/errors', locals: { object: object }
  end
end