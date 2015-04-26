class RadioButtonsWithTooltipsInput < SimpleForm::Inputs::CollectionRadioButtonsInput
  def initialize(builder, attribute_name, column, input_type, options = {})
    input_type = :radio_buttons
    super
  end

  def build_nested_boolean_style_item_tag(collection_builder)
    data_attributes = tooltip_data_attributes(collection_builder)
    collection_builder.radio_button + template.content_tag(:span, collection_builder.text, data: data_attributes)
  end

  def tooltip_data_attributes(collection_builder)
    description = collection_builder.instance_values['object'].description
    {toggle: 'tooltip', original_title: description} unless description.nil?
  end
end
