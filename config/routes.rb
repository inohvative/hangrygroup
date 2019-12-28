Rails.application.routes.draw do
  # Routes for the Dosing cohort resource:

  # CREATE
  get("/dosing_cohorts/new", { :controller => "dosing_cohorts", :action => "new_form" })
  post("/create_dosing_cohort", { :controller => "dosing_cohorts", :action => "create_row" })

  # READ
  get("/dosing_cohorts", { :controller => "dosing_cohorts", :action => "index" })
  get("/dosing_cohorts/:id_to_display", { :controller => "dosing_cohorts", :action => "show" })

  # UPDATE
  get("/dosing_cohorts/:prefill_with_id/edit", { :controller => "dosing_cohorts", :action => "edit_form" })
  post("/update_dosing_cohort/:id_to_modify", { :controller => "dosing_cohorts", :action => "update_row" })

  # DELETE
  get("/delete_dosing_cohort/:id_to_remove", { :controller => "dosing_cohorts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Meal resource:

  # CREATE
  get("/meals/new", { :controller => "meals", :action => "new_form" })
  post("/create_meal", { :controller => "meals", :action => "create_row" })

  # READ
  get("/meals", { :controller => "meals", :action => "index" })
  get("/meals/:id_to_display", { :controller => "meals", :action => "show" })

  # UPDATE
  get("/meals/:prefill_with_id/edit", { :controller => "meals", :action => "edit_form" })
  post("/update_meal/:id_to_modify", { :controller => "meals", :action => "update_row" })

  # DELETE
  get("/delete_meal/:id_to_remove", { :controller => "meals", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
