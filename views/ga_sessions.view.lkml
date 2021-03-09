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
  dimension: date {
    type : string
    sql:  ${TABLE}.date ;;
  }
  measure : user_count {
    type :  count_distinct
    sql: ${visit_id} ;;
  }
  measure: Avg_Page_Visit_Per_User  {
    type : number
    value_format: "0.000000"
    sql: ${total_page_visits}/${user_count} ;;
  }

}
