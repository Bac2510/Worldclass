# frozen_string_literal: true

module Primer
  # @label SpinnerComponent
  class SpinnerComponentPreview < ViewComponent::Preview
    # @label Default Options
    #
    # @param size [Symbol] select [small, medium, large]
    def default(size: :medium)
      render(Primer::SpinnerComponent.new(size: size))
    end
  end
end