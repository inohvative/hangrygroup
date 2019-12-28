class SubjectsController < ApplicationController
  def index
    @subjects = Subject.page(params[:page]).per(10)

    render("subject_templates/index.html.erb")
  end

  def show
    @glucose_level = GlucoseLevel.new
    @insulin_bolu = InsulinBolu.new
    @subject = Subject.find(params.fetch("id_to_display"))

    render("subject_templates/show.html.erb")
  end

  def new_form
    @subject = Subject.new

    render("subject_templates/new_form.html.erb")
  end

  def create_row
    @subject = Subject.new

    @subject.cohort_id = params.fetch("cohort_id")
    @subject.profilenotes = params.fetch("profilenotes") if params.key?("profilenotes")

    if @subject.valid?
      @subject.save

      redirect_back(:fallback_location => "/subjects", :notice => "Subject created successfully.")
    else
      render("subject_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_dosing_cohort
    @subject = Subject.new

    @subject.cohort_id = params.fetch("cohort_id")
    @subject.profilenotes = params.fetch("profilenotes") if params.key?("profilenotes")

    if @subject.valid?
      @subject.save

      redirect_to("/dosing_cohorts/#{@subject.cohort_id}", notice: "Subject created successfully.")
    else
      render("subject_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @subject = Subject.find(params.fetch("prefill_with_id"))

    render("subject_templates/edit_form.html.erb")
  end

  def update_row
    @subject = Subject.find(params.fetch("id_to_modify"))

    @subject.cohort_id = params.fetch("cohort_id")
    @subject.profilenotes = params.fetch("profilenotes") if params.key?("profilenotes")

    if @subject.valid?
      @subject.save

      redirect_to("/subjects/#{@subject.id}", :notice => "Subject updated successfully.")
    else
      render("subject_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_cohort
    @subject = Subject.find(params.fetch("id_to_remove"))

    @subject.destroy

    redirect_to("/dosing_cohorts/#{@subject.cohort_id}", notice: "Subject deleted successfully.")
  end

  def destroy_row
    @subject = Subject.find(params.fetch("id_to_remove"))

    @subject.destroy

    redirect_to("/subjects", :notice => "Subject deleted successfully.")
  end
end
