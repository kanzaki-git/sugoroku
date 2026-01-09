module BoardsHelper
  def board_cell(cell, size)
    cell_class, label_text = cell_meta(cell, size)

    content_tag(:div, class: ["cell", cell_class].compact.join(" ")) do
      parts = []
      parts << content_tag(:span, label_text, class: "label") if label_text.present?
      parts << content_tag(:span, cell, class: "number")
      safe_join(parts)
    end
  end

  private

  def cell_meta(cell, size)
    # size=1 のときは GOAL 優先（好みで変更OK）
    return ["goal", "GOAL"] if cell == size
    return ["start", "START"] if cell == 1
    [nil, nil]
  end
end
