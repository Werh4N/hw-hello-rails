module MoviesHelper
  def sort_header(column)
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to column.titleize, { sort: column, direction: direction }, { class: column == sort_column ? "highlight #{sort_direction}" : "" }
  end
end
