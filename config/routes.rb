Rails.application.routes.draw do
  # Routes for the Meal time resource:

  # CREATE
  get("/meal_times/new", { :controller => "meal_times", :action => "new_form" })
  post("/create_meal_time", { :controller => "meal_times", :action => "create_row" })

  # READ
  get("/meal_times", { :controller => "meal_times", :action => "index" })
  get("/meal_times/:id_to_display", { :controller => "meal_times", :action => "show" })

  # UPDATE
  get("/meal_times/:prefill_with_id/edit", { :controller => "meal_times", :action => "edit_form" })
  post("/update_meal_time/:id_to_modify", { :controller => "meal_times", :action => "update_row" })

  # DELETE
  get("/delete_meal_time/:id_to_remove", { :controller => "meal_times", :action => "destroy_row" })

  #------------------------------

  # Routes for the Subject resource:

  # CREATE
  get("/subjects/new", { :controller => "subjects", :action => "new_form" })
  post("/create_subject", { :controller => "subjects", :action => "create_row" })

  # READ
  get("/subjects", { :controller => "subjects", :action => "index" })
  get("/subjects/:id_to_display", { :controller => "subjects", :action => "show" })

  # UPDATE
  get("/subjects/:prefill_with_id/edit", { :controller => "subjects", :action => "edit_form" })
  post("/update_subject/:id_to_modify", { :controller => "subjects", :action => "update_row" })

  # DELETE
  get("/delete_subject/:id_to_remove", { :controller => "subjects", :action => "destroy_row" })

  #------------------------------

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
