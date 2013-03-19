class DashboardsController < ApplicationController
  helper_method :sort_column, :sort_direction
   add_breadcrumb "Home", :dashboards_path
  def index
     @books = Book.search(params[:search]).order_by(sort_column + " " + sort_direction).page(params[:page]).per(5)

  end
  def show
    
  end
   def sort_column
    Book.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
