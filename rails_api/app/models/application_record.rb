class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def error_response
    result = {}
    self.errors.messages.each do |key, value|
      array = []
      value.each do |val|
        array << "#{key} #{val}"
      end
      result.merge!(key => array)
    end
    return result
  end
end
