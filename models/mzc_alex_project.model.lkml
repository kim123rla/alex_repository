connection: "mzcdsc-team-200716"

# include all the views
include: "/views/**/*.view"

datagroup: mzc_alex_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mzc_alex_project_default_datagroup

# explore: bumblebee_data_trans {}

# explore: bumblebee_data_trans_4 {}

# explore: ecom_kib {
#   join: ecom_kib__sku {
#     view_label: "Ecom Kib: Sku"
#     sql: LEFT JOIN UNNEST(${ecom_kib.sku}) as ecom_kib__sku ;;
#     relationship: one_to_many
#   }

#   join: ecom_kib__category {
#     view_label: "Ecom Kib: Category"
#     sql: LEFT JOIN UNNEST(${ecom_kib.category}) as ecom_kib__category ;;
#     relationship: one_to_many
#   }

#   join: ecom_kib__products {
#     view_label: "Ecom Kib: Products"
#     sql: LEFT JOIN UNNEST(${ecom_kib.products}) as ecom_kib__products ;;
#     relationship: one_to_many
#   }

#   join: ecom_kib__manufacturer {
#     view_label: "Ecom Kib: Manufacturer"
#     sql: LEFT JOIN UNNEST(${ecom_kib.manufacturer}) as ecom_kib__manufacturer ;;
#     relationship: one_to_many
#   }
# }

# explore: ecommerce_sample_2 {}

# explore: test_partition {
#   join: test_partition__sku {
#     view_label: "Test Partition: Sku"
#     sql: LEFT JOIN UNNEST(${test_partition.sku}) as test_partition__sku ;;
#     relationship: one_to_many
#   }

#   join: test_partition__category {
#     view_label: "Test Partition: Category"
#     sql: LEFT JOIN UNNEST(${test_partition.category}) as test_partition__category ;;
#     relationship: one_to_many
#   }

#   join: test_partition__products {
#     view_label: "Test Partition: Products"
#     sql: LEFT JOIN UNNEST(${test_partition.products}) as test_partition__products ;;
#     relationship: one_to_many
#   }

#   join: test_partition__manufacturer {
#     view_label: "Test Partition: Manufacturer"
#     sql: LEFT JOIN UNNEST(${test_partition.manufacturer}) as test_partition__manufacturer ;;
#     relationship: one_to_many
#   }
# }

