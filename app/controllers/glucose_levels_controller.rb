class GlucoseLevelsController < ApplicationController
  def index
    @glucose_levels = GlucoseLevel.all

    render("glucose_level_templates/index.html.erb")
  end

  def show
    @meal = Meal.new
    @glucose_level = GlucoseLevel.find(params.fetch("id_to_display"))

    render("glucose_level_templates/show.html.erb")
  end

  def new_form
    @glucose_level = GlucoseLevel.new

    render("glucose_level_templates/new_form.html.erb")
  end

  def create_row
    @glucose_level = GlucoseLevel.new

    @glucose_level.glucose_level = params.fetch("glucose_level")
    @glucose_level.subject_id = params.fetch("subject_id")

    if @glucose_level.valid?
      @glucose_level.save

      redirect_back(:fallback_location => "/glucose_levels", :notice => "Glucose level created successfully.")
    else
      render("glucose_level_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_subject
    @glucose_level = GlucoseLevel.new

    @glucose_level.glucose_level = params.fetch("glucose_level")
    @glucose_level.subject_id = params.fetch("subject_id")

    if @glucose_level.valid?
      @glucose_level.save

      redirect_to("/subjects/#{@glucose_level.subject_id}", notice: "GlucoseLevel created successfully.")
    else
      render("glucose_level_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @glucose_level = GlucoseLevel.find(params.fetch("prefill_with_id"))

    render("glucose_level_templates/edit_form.html.erb")
  end

  def update_row
    @glucose_level = GlucoseLevel.find(params.fetch("id_to_modify"))

    @glucose_level.glucose_level = params.fetch("glucose_level")
    @glucose_level.subject_id = params.fetch("subject_id")

    if @glucose_level.valid?
      @glucose_level.save

      redirect_to("/glucose_levels/#{@glucose_level.id}", :notice => "Glucose level updated successfully.")
    else
      render("glucose_level_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_subject
    @glucose_level = GlucoseLevel.find(params.fetch("id_to_remove"))

    @glucose_level.destroy

    redirect_to("/subjects/#{@glucose_level.subject_id}", notice: "GlucoseLevel deleted successfully.")
  end

  def destroy_row
    @glucose_level = GlucoseLevel.find(params.fetch("id_to_remove"))

    @glucose_level.destroy

    redirect_to("/glucose_levels", :notice => "Glucose level deleted successfully.")
  end
end
