class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all

    render("subject_templates/index.html.erb")
  end

  def show
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
    @subject.profilenotes = params.fetch("profilenotes")

    if @subject.valid?
      @subject.save

      redirect_back(:fallback_location => "/subjects", :notice => "Subject created successfully.")
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
    @subject.profilenotes = params.fetch("profilenotes")

    if @subject.valid?
      @subject.save

      redirect_to("/subjects/#{@subject.id}", :notice => "Subject updated successfully.")
    else
      render("subject_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @subject = Subject.find(params.fetch("id_to_remove"))

    @subject.destroy

    redirect_to("/subjects", :notice => "Subject deleted successfully.")
  end
end
