class DosingCohortsController < ApplicationController
  def index
    @dosing_cohorts = DosingCohort.all

    render("dosing_cohort_templates/index.html.erb")
  end

  def show
    @dosing_cohort = DosingCohort.find(params.fetch("id_to_display"))

    render("dosing_cohort_templates/show.html.erb")
  end

  def new_form
    @dosing_cohort = DosingCohort.new

    render("dosing_cohort_templates/new_form.html.erb")
  end

  def create_row
    @dosing_cohort = DosingCohort.new

    @dosing_cohort.cohort_123 = params.fetch("cohort_123")

    if @dosing_cohort.valid?
      @dosing_cohort.save

      redirect_back(:fallback_location => "/dosing_cohorts", :notice => "Dosing cohort created successfully.")
    else
      render("dosing_cohort_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @dosing_cohort = DosingCohort.find(params.fetch("prefill_with_id"))

    render("dosing_cohort_templates/edit_form.html.erb")
  end

  def update_row
    @dosing_cohort = DosingCohort.find(params.fetch("id_to_modify"))

    @dosing_cohort.cohort_123 = params.fetch("cohort_123")

    if @dosing_cohort.valid?
      @dosing_cohort.save

      redirect_to("/dosing_cohorts/#{@dosing_cohort.id}", :notice => "Dosing cohort updated successfully.")
    else
      render("dosing_cohort_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @dosing_cohort = DosingCohort.find(params.fetch("id_to_remove"))

    @dosing_cohort.destroy

    redirect_to("/dosing_cohorts", :notice => "Dosing cohort deleted successfully.")
  end
end
