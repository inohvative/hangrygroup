class InsulinBolusController < ApplicationController
  def index
    @insulin_bolus = InsulinBolu.all

    render("insulin_bolu_templates/index.html.erb")
  end

  def show
    @meal = Meal.new
    @insulin_bolu = InsulinBolu.find(params.fetch("id_to_display"))

    render("insulin_bolu_templates/show.html.erb")
  end

  def new_form
    @insulin_bolu = InsulinBolu.new

    render("insulin_bolu_templates/new_form.html.erb")
  end

  def create_row
    @insulin_bolu = InsulinBolu.new

    @insulin_bolu.name = params.fetch("name")
    @insulin_bolu.amount = params.fetch("amount")
    @insulin_bolu.subject_id = params.fetch("subject_id")

    if @insulin_bolu.valid?
      @insulin_bolu.save

      redirect_back(:fallback_location => "/insulin_bolus", :notice => "Insulin bolu created successfully.")
    else
      render("insulin_bolu_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_subject
    @insulin_bolu = InsulinBolu.new

    @insulin_bolu.name = params.fetch("name")
    @insulin_bolu.amount = params.fetch("amount")
    @insulin_bolu.subject_id = params.fetch("subject_id")

    if @insulin_bolu.valid?
      @insulin_bolu.save

      redirect_to("/subjects/#{@insulin_bolu.subject_id}", notice: "InsulinBolu created successfully.")
    else
      render("insulin_bolu_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @insulin_bolu = InsulinBolu.find(params.fetch("prefill_with_id"))

    render("insulin_bolu_templates/edit_form.html.erb")
  end

  def update_row
    @insulin_bolu = InsulinBolu.find(params.fetch("id_to_modify"))

    @insulin_bolu.name = params.fetch("name")
    @insulin_bolu.amount = params.fetch("amount")
    @insulin_bolu.subject_id = params.fetch("subject_id")

    if @insulin_bolu.valid?
      @insulin_bolu.save

      redirect_to("/insulin_bolus/#{@insulin_bolu.id}", :notice => "Insulin bolu updated successfully.")
    else
      render("insulin_bolu_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_subject
    @insulin_bolu = InsulinBolu.find(params.fetch("id_to_remove"))

    @insulin_bolu.destroy

    redirect_to("/subjects/#{@insulin_bolu.subject_id}", notice: "InsulinBolu deleted successfully.")
  end

  def destroy_row
    @insulin_bolu = InsulinBolu.find(params.fetch("id_to_remove"))

    @insulin_bolu.destroy

    redirect_to("/insulin_bolus", :notice => "Insulin bolu deleted successfully.")
  end
end
