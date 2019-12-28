Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "meals#index"
  # Routes for the Insulin bolu resource:

  # CREATE
  get("/insulin_bolus/new", { :controller => "insulin_bolus", :action => "new_form" })
  post("/create_insulin_bolu", { :controller => "insulin_bolus", :action => "create_row" })

  # READ
  get("/insulin_bolus", { :controller => "insulin_bolus", :action => "index" })
  get("/insulin_bolus/:id_to_display", { :controller => "insulin_bolus", :action => "show" })

  # UPDATE
  get("/insulin_bolus/:prefill_with_id/edit", { :controller => "insulin_bolus", :action => "edit_form" })
  post("/update_insulin_bolu/:id_to_modify", { :controller => "insulin_bolus", :action => "update_row" })

  # DELETE
  get("/delete_insulin_bolu/:id_to_remove", { :controller => "insulin_bolus", :action => "destroy_row" })

  #------------------------------

  # Routes for the Glucose level resource:

  # CREATE
  get("/glucose_levels/new", { :controller => "glucose_levels", :action => "new_form" })
  post("/create_glucose_level", { :controller => "glucose_levels", :action => "create_row" })

  # READ
  get("/glucose_levels", { :controller => "glucose_levels", :action => "index" })
  get("/glucose_levels/:id_to_display", { :controller => "glucose_levels", :action => "show" })

  # UPDATE
  get("/glucose_levels/:prefill_with_id/edit", { :controller => "glucose_levels", :action => "edit_form" })
  post("/update_glucose_level/:id_to_modify", { :controller => "glucose_levels", :action => "update_row" })

  # DELETE
  get("/delete_glucose_level/:id_to_remove", { :controller => "glucose_levels", :action => "destroy_row" })

  #------------------------------

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
