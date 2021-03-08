view: ga_sessions {
  sql_table_name: `GMC_PoC.ga_sessions`
    ;;
  dimension: totals_visits {
    type: number
    sql: ${TABLE}.totals.visits ;;
  }
  measure: total_page_visits {
    type: sum
    sql: ${totals_visits} ;;
  }
  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }
  measure : user_count {
    type :  count_distinct
    sql: ${visit_id} ;;
  }
  measure: avg_page_visit_per_user  {
    type : number
    sql: ${total_page_visits}/${user_count} ;;
  }
}
