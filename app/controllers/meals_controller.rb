class MealsController < ApplicationController
  def index
    @meals = Meal.all

    render("meal_templates/index.html.erb")
  end

  def show
    @meal = Meal.find(params.fetch("id_to_display"))

    render("meal_templates/show.html.erb")
  end

  def new_form
    @meal = Meal.new

    render("meal_templates/new_form.html.erb")
  end

  def create_row
    @meal = Meal.new

    @meal.name = params.fetch("name")
    @meal.carbs_g = params.fetch("carbs_g")
    @meal.mealtime_id = params.fetch("mealtime_id")
    @meal.glucoselevel_id = params.fetch("glucoselevel_id")
    @meal.insulinunits_id = params.fetch("insulinunits_id")
    @meal.nurse_notes = params.fetch("nurse_notes")

    if @meal.valid?
      @meal.save

      redirect_back(:fallback_location => "/meals", :notice => "Meal created successfully.")
    else
      render("meal_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @meal = Meal.find(params.fetch("prefill_with_id"))

    render("meal_templates/edit_form.html.erb")
  end

  def update_row
    @meal = Meal.find(params.fetch("id_to_modify"))

    @meal.name = params.fetch("name")
    @meal.carbs_g = params.fetch("carbs_g")
    @meal.mealtime_id = params.fetch("mealtime_id")
    @meal.glucoselevel_id = params.fetch("glucoselevel_id")
    @meal.insulinunits_id = params.fetch("insulinunits_id")
    @meal.nurse_notes = params.fetch("nurse_notes")

    if @meal.valid?
      @meal.save

      redirect_to("/meals/#{@meal.id}", :notice => "Meal updated successfully.")
    else
      render("meal_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @meal = Meal.find(params.fetch("id_to_remove"))

    @meal.destroy

    redirect_to("/meals", :notice => "Meal deleted successfully.")
  end
end