view: sourcing_eam_member_activity {

  sql_table_name: dbo.SourcingTeamMemberActivity ;;

  dimension_group: activity_date {
    type: time
    label: "Activity"
    timeframes: [date,week,month]
    sql: ${TABLE}.ActivityDate ;;

  }

  }
