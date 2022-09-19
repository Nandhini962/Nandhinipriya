- dashboard: groceries
  title: Groceries
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: UOh0ZwHk3BkIk4tiCUlfFU
  elements:
  - title: Groceries
    name: Groceries
    model: nandhini_food_sales_report
    explore: groceries
    type: looker_column
    fields: [sum_of_vegtablecost, vegetables.Vegetablename]
    filters: {}
    sorts: [sum_of_vegtablecost desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_vegtablecost, based_on: vegetables.vegtablecost,
        expression: '', label: Sum of Vegtablecost, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      custom:
        id: ef680a23-02fc-668d-8e97-b2c602c0f51d
        label: Custom
        type: discrete
        colors:
        - "#81BE56"
        - "#CCC54B"
        - "#FCC03E"
        - "#FCA33D"
        - "#F57237"
        - "#D03333"
        - "#CD3B8A"
        - "#AF71CB"
        - "#8c3143"
        - "#6877A4"
        - "#55A3B3"
        - "#80CABB"
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Vegetablename: vegetables.Vegetablename
    row: 0
    col: 0
    width: 9
    height: 6
  - title: Food Store Data
    name: Food Store Data
    model: nandhini_food_sales_report
    explore: groceries
    type: looker_grid
    fields: [food_store.Items, food_store.state, food_store.Cost]
    sorts: [food_store.Items]
    limit: 500
    dynamic_fields: [{measure: sum_of_vegtablecost, based_on: vegetables.vegtablecost,
        expression: '', label: Sum of Vegtablecost, type: sum, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      custom:
        id: ef680a23-02fc-668d-8e97-b2c602c0f51d
        label: Custom
        type: discrete
        colors:
        - "#81BE56"
        - "#CCC54B"
        - "#FCC03E"
        - "#FCA33D"
        - "#F57237"
        - "#D03333"
        - "#CD3B8A"
        - "#AF71CB"
        - "#8c3143"
        - "#6877A4"
        - "#55A3B3"
        - "#80CABB"
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", vegetables.Vegetablename, sum_of_vegtablecost,
      food_store.Items]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      food_store.Cost:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 0
    col: 9
    width: 15
    height: 6
  filters:
  - name: Vegetablename
    title: Vegetablename
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: nandhini_food_sales_report
    explore: groceries
    listens_to_filters: []
    field: vegetables.Vegetablename
