view: landing_page_activity {

  sql_table_name: dbo.LandingPageActivity ;;


## Dimensions

  dimension_group: activity_date {
    type: time
    label: "Activity"
    timeframes: [date,week,month]
    sql: ${TABLE}.ActivityDate ;;
  }

  dimension: landing_page_step {
    type: string
    sql: ${TABLE}.LandingPageStep ;;
  }

  dimension: landing_page_name {
    type: string
    sql: ${TABLE}.LandingPageName ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.TemplateName ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.SourceName ;;
  }

  dimension: new_or_existing {
    type: string
    sql: ${TABLE}.NewOrExisting ;;
  }

  dimension: agent_profile_state {
    type: string
    sql: ${TABLE}.AgentProfileState ;;
  }


## Measures (# - Landing Page)

  measure: viewed {
    group_label: "# - Landing Page"
    type: sum
    sql: ${TABLE}.Viewed ;;
  }

  measure: abandoned {
    group_label: "# - Landing Page"
    type: sum
    sql: ${TABLE}.Abandoned ;;
  }

  measure: clicked {
    group_label: "# - Landing Page"
    type: sum
    sql: ${TABLE}.Clicked ;;
  }

  measure: completed_profile {
    group_label: "# - Landing Page"
    type: sum
    sql: ${TABLE}.CompletedProfile ;;
  }

  measure: prohibited_state {
    group_label: "# - Landing Page"
    type: sum
    sql: ${TABLE}.ProhibitedState ;;
  }


## Measures (# - Step Completion)

  measure: completed_password {
    group_label: "# - Step Completion"
    label: "Password"
    type: sum
    sql: ${TABLE}.CompletedPassword ;;
  }

  measure: completed_contact_page {
    group_label: "# - Step Completion"
    label: "Contact"
    type: sum
    sql: ${TABLE}.CompletedContactPage ;;
  }

  measure: completed_info_page {
    group_label: "# - Step Completion"
    label: "Info"
    type: sum
    sql: ${TABLE}.CompletedInfoPage ;;
  }

  measure: completed_job_history {
    group_label: "# - Step Completion"
    label: "Job History"
    type: sum
    sql: ${TABLE}.CompletedJobHistory ;;
  }

  measure: completed_writing_sample {
    group_label: "# - Step Completion"
    label: "Writing Sample"
    type: sum
    sql: ${TABLE}.CompletedWritingSample ;;
  }


## Measure  (% - Clicked, Abandoned, Completed)

  measure: clicked_percentage {
    group_label: "% - Landing Page"
    type: number
    label: "Clicked/Viewed"
    value_format: "#.00\%"
    sql:  100.0 * ${clicked} / NULLIF(${viewed},0);;
  }

  measure: abandoned_percentage {
    group_label: "% - Landing Page"
    type: number
    label: "Abandoned/Viewed"
    value_format: "#.00\%"
    sql:  100.0 * ${abandoned} / NULLIF(${viewed},0);;
  }

  measure: viewed_completed_percentage {
    group_label: "% - Landing Page"
    label: "Completed/Viewed"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_profile} / NULLIF(${viewed},0);;
  }

  measure: clicked_completed_percentage {
    group_label: "% - Landing Page"
    label: "Completed/Clicked"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_profile} / NULLIF(${clicked},0);;
  }


## Measures (% - Step Completion)

  measure: completed_password_page_percent {
    group_label: "% - Step Completion"
    label: "Password"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_password} / NULLIF(${clicked},0);;
  }

  measure: completed_contact_page_percent {
    group_label: "% - Step Completion"
    label: "Contact"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_contact_page} / NULLIF(${clicked},0);;
  }

  measure: completed_info_page_percent {
    group_label: "% - Step Completion"
    label: "Info"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_info_page} / NULLIF(${clicked},0);;
  }

  measure: completed_job_history_page_percent {
    group_label: "% - Step Completion"
    label: "Job History"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_job_history} / NULLIF(${clicked},0);;
  }

  measure: completed_writing_sample_percent {
    group_label: "% - Step Completion"
    label: "Writing Sample"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_writing_sample} / NULLIF(${clicked},0);;
  }

}
