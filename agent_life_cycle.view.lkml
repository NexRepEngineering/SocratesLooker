view: agent_life_cycle {
  sql_table_name: dbo.AgentLifeCycle ;;


## Agent Life-Cycle Dimensions

  dimension: life_cycle_month {
    type: string
    sql: ${TABLE}.LifeCycleMonth ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.ProgramName ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.AgentName ;;
  }

  dimension: certifier_name {
    type: string
    sql: ${TABLE}.CertifierName ;;
  }

  dimension: assessor_name {
    type: string
    sql: ${TABLE}.AssessorName ;;
  }



## Certification Measures

  measure: certification_no_show {
    type: sum
    sql: ${TABLE}.CertificationNoShow ;;
  }

  measure: certification_active {
    type: sum
    sql: ${TABLE}.CertificationActive ;;
  }

  measure: certification_left {
    type: sum
    sql: ${TABLE}.CertificationLeft ;;
  }

  measure: certification_passed {
    type: sum
    sql: ${TABLE}.CertificationPassed ;;
  }

  measure: certification_failed {
    type: sum
    sql: ${TABLE}.CertificationFailed ;;
  }

  measure: certification_attrition {
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${certification_left} / NULLIF(${certification_active},0);;
  }


  ## Nesting Measures

  measure: nesting_no_show {
    type: sum
    sql: ${TABLE}.NestingNoShow ;;
  }

  measure: nesting_active {
    type: sum
    sql: ${TABLE}.NestingActive ;;
  }

  measure: nesting_left {
    type: sum
    sql: ${TABLE}.NestingLeft ;;
  }

  measure: nesting_passed {
    type: sum
    sql: ${TABLE}.NestingPassed ;;
  }

  measure: nesting_failed {
    type: sum
    sql: ${TABLE}.NestingFailed ;;
  }

  measure: nesting_attrition {
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${nesting_left} / NULLIF(${nesting_active},0);;
  }

## Production Measures

  measure: production_start {
    type: sum
    sql: ${TABLE}.ProductionStart ;;
  }

  measure: production_adds {
    type: sum
    sql: ${TABLE}.ProductionAdds ;;
  }

  measure: production_removes {
    type: sum
    sql: ${TABLE}.ProductionRemoves ;;
  }

  measure: production_removes_pre_30 {
    type: sum
    sql: ${TABLE}.ProductionRemovesPre30 ;;
  }

  measure: production_removes_30_plus {
    type: sum
    sql: ${TABLE}.ProductionRemoves30Plus ;;
  }

  measure: production_end {
    type: sum
    sql: ${TABLE}.ProductionEnd ;;
  }

  measure: production_active {
    type: sum
    sql: ${TABLE}.ProductionActive ;;
  }

  measure: production_attrition {
    type: number
    value_format: "#.00\%"
    sql:  100.0 * ${production_removes} / NULLIF(${production_active},0);;
  }


}
