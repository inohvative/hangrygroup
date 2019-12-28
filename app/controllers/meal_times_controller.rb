class MealTimesController < ApplicationController
  def index
    @q = MealTime.ransack(params[:q])
    @meal_times = @q.result(:distinct => true).includes(:meals).page(params[:page]).per(10)

    render("meal_time_templates/index.html.erb")
  end

  def show
    @meal = Meal.new
    @meal_time = MealTime.find(params.fetch("id_to_display"))

    render("meal_time_templates/show.html.erb")
  end

  def new_form
    @meal_time = MealTime.new

    render("meal_time_templates/new_form.html.erb")
  end

  def create_row
    @meal_time = MealTime.new

    @meal_time.name = params.fetch("name")

    if @meal_time.valid?
      @meal_time.save

      redirect_back(:fallback_location => "/meal_times", :notice => "Meal time created successfully.")
    else
      render("meal_time_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @meal_time = MealTime.find(params.fetch("prefill_with_id"))

    render("meal_time_templates/edit_form.html.erb")
  end

  def update_row
    @meal_time = MealTime.find(params.fetch("id_to_modify"))

    @meal_time.name = params.fetch("name")

    if @meal_time.valid?
      @meal_time.save

      redirect_to("/meal_times/#{@meal_time.id}", :notice => "Meal time updated successfully.")
    else
      render("meal_time_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @meal_time = MealTime.find(params.fetch("id_to_remove"))

    @meal_time.destroy

    redirect_to("/meal_times", :notice => "Meal time deleted successfully.")
  end
end
