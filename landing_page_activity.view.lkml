view: landing_page_activity {

  sql_table_name: dbo.LandingPageActivity ;;


## Landing Page Activity Dimensions

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


## Measures - Clicked/Abandoned

  measure: viewed {
    type: sum
    sql: ${TABLE}.Viewed ;;
  }

  measure: abandoned {
    type: sum
    sql: ${TABLE}.Abandoned ;;
  }

  measure: clicked {
    type: sum
    sql: ${TABLE}.Clicked ;;
  }


## Measures - Prohibited State

  measure: prohibited_state {
    type: sum
    sql: ${TABLE}.ProhibitedState ;;
  }


## Measures - Steps in the Profile

  measure: completed_password {
    type: sum
    sql: ${TABLE}.CompletedPassword ;;
  }

  measure: completed_contact_page {
    type: sum
    sql: ${TABLE}.CompletedContactPage ;;
  }

  measure: completed_info_page {
    type: sum
    sql: ${TABLE}.CompletedInfoPage ;;
  }

  measure: completed_job_history {
    type: sum
    sql: ${TABLE}.CompletedJobHistory ;;
  }

  measure: completed_writing_sample {
    type: sum
    sql: ${TABLE}.CompletedWritingSample ;;
  }

  measure: completed_profile {
    label: "Completed"
    type: sum
    sql: ${TABLE}.CompletedProfile ;;
  }


## Measures - Calculated Percentages

  measure: clicked_percentage {
    type: number
    label: "Clicked/Viewed"
    value_format: "#.00\%"
    sql:  100.0 * ${clicked} / NULLIF(${viewed},0);;
  }

  measure: abandoned_percentage {
    type: number
    label: "Abandoned/Viewed"
    value_format: "#.00\%"
    sql:  100.0 * ${abandoned} / NULLIF(${viewed},0);;
  }

  measure: viewed_completed_percentage {
    label: "Completed/Viewed"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_profile} / NULLIF(${viewed},0);;
  }

  measure: clicked_completed_percentage {
    label: "Completed/Clicked"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_profile} / NULLIF(${clicked},0);;
  }


# Measures - Step Completion (Step/Clicked)

  measure: completed_password_page_percent {
    group_label: "Step Completion (Step/Clicked)"
    label: "Password Page"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_password} / NULLIF(${clicked},0);;
  }

  measure: completed_contact_page_percent {
    group_label: "Step Completion (Step/Clicked)"
    label: "Contact Page"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_contact_page} / NULLIF(${clicked},0);;
  }

  measure: completed_info_page_percent {
    group_label: "Step Completion (Step/Clicked)"
    label: "Info Page"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_info_page} / NULLIF(${clicked},0);;
  }

  measure: completed_job_history_page_percent {
    group_label: "Step Completion (Step/Clicked)"
    label: "Job History"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_job_history} / NULLIF(${clicked},0);;
  }

  measure: completed_writing_sample_percent {
    group_label: "Step Completion (Step/Clicked)"
    label: "Writing Sample"
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${completed_writing_sample} / NULLIF(${clicked},0);;
  }


}
