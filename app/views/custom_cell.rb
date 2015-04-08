class CustomCell < PM::TableViewCell
  def state=(state)
    build_initial_view unless view_built? # Lay out view unless already laid out
    find(contentView).tap do |c|
      c.find(:label).data(state[:key]) if state[:key] # Pass state to views
    end
  end

  def view_built?
    @view_built
  end

  def build_initial_view
    find(contentView).tap do |c|
      c.append(UILabel, :label)
    end
    @view_built = true
  end
end
