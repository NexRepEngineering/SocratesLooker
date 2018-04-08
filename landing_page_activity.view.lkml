view: landing_page_activity {

  sql_table_name: dbo.LandingPageActivity ;;


## Landing Page Activity Dimensions

  dimension: session_date {
    type: date
    sql: ${TABLE}.SessionDate ;;
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









}
