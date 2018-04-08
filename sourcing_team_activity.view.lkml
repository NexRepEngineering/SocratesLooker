view: sourcing_team_activity {

  sql_table_name: dbo.SourcingTeamActivity ;;

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

  dimension: team_member {
    type: string
    sql: ${TABLE}.TeamMember ;;
  }


## Measures - Screening (#)

  measure: screening_total {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.ScreeningTotal ;;
  }

  measure: screening_qualified {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.ScreeningQualified ;;
  }

  measure: screening_rejected {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.ScreeningRejected ;;
  }

  measure: screening_not_eligible {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.ScreeningNotEligible ;;
  }

  measure: screening_incomplete {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.ScreeningIncomplete ;;
  }



## Measures - Scheduling (#)

  measure: SchedulingTotal {
    group_label: "Screening - #"
    type: sum
    sql: ${TABLE}.SchedulingTotal ;;
  }


## Measures - Assessing (#)




  }
