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

  measure: scheduling_total {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingTotal ;;
  }

  measure: scheduling_connected_scheduled {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingConnectedScheduled ;;
  }

  measure: scheduling_connected_rejected {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingConnectedRejected ;;
  }

  measure: scheduling_connected_declined {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingConnectedDeclined ;;
  }

  measure: scheduling_voicemail {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingVoicemail ;;
  }

  measure: Scheduling_no_answer {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingNoAnswer ;;
  }

  measure: scheduling_bad_numbers {
    group_label: "Scheduling - #"
    type: sum
    sql: ${TABLE}.SchedulingBadNumbers ;;
  }



## Measures - Assessing (#)

  measure: assessing_total {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingTotal ;;
  }

  measure: assessing_invited {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingInvited ;;
  }

  measure: assessing_wait_listed {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingWaitListed ;;
  }

  measure: assessing_rejected {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingRejected ;;
  }

  measure: assessing_declined {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingDeclined ;;
  }

  measure: assessing_missed {
    group_label: "Assessing - #"
    type: sum
    sql: ${TABLE}.AssessingMissed ;;
  }

  }
