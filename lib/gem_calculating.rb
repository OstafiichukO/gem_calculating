# frozen_string_literal: true
require_relative "gem_calculating/version"

module Calculate
  # Adds two numbers
  def self.add(num1, num2)
    if validate_numbers(num1, num2) == true
      return puts "Numbers is not valid"
    end
    num1 + num2
  rescue StandardError
    nil
  end
  # Subtract two numbers
  def self.subtract(num1, num2)
    if validate_numbers(num1, num2) == true
      return puts "Numbers is not valid"
    end
    num1 - num2
  rescue StandardError
  nil
  end
  # Multiply two numbers
  def self.multiply(num1, num2)
    if validate_numbers(num1, num2) == true
      return puts "Numbers is not valid"
    end
    num1 * num2
  rescue StandardError
    nil
  end
  # Divide two numbers
  def self.divide(num1, num2)
    if validate_numbers(num1, num2) == true
      return puts "Numbers is not valid"
    end
    num1 / num2
  rescue StandardError
    nil
  end

  private_class_method def self.validate_numbers(num1, num2)
    num1.is_a?(String) or num2.is_a?(String)
end


class Error < StandardError; end
# Your code goes here...
end