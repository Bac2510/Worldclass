# frozen_string_literal: true

class Primer::SubheadComponentStories < ViewComponent::Storybook::Stories
  layout "storybook_preview"

  story(:subhead) do
    controls do
      spacious false
      hide_border false
    end

    content do |component|
      component.slot(:heading, danger: false, tag: :h1) { "My Profile Heading" }
      component.slot(:description, tag: :span) { "This is a description of my profile. I live on planet Earth. Sometimes." }
      component.slot(:actions, classes: "btn btn-sm") { "Link to personal website" }
    end
  end

  story(:danger_heading) do
    content do |component|
      component.slot(:heading, danger: true) { "Danger Heading" }
    end
  end
end
