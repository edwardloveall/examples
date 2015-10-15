module ApplicationHelper
  def link_to_add_association(title, form, association)
    new_association = form.object.model.send(association).klass.new
    id = new_association.object_id
    nested_form = form.fields_for(association, new_association, child_index: id) do |builder|
      render(association.to_s.singularize + "_form", form: builder)
    end
    link_to(title, '#', class: "add-fields", data: {id: id, fields: nested_form.delete("\n")})
  end
end
