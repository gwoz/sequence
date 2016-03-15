require_relative '../view/view'
require_relative '../model/company'

class Controller

  include View

  def initialize
    View.start
  end

  def use_sequence
    choice = View.get_input
    case choice
	  when 'add'
	  	add_sequence
	  when 'view'
	  	view_sequence
	end
  end

  def add_company
  	p Company.new(name: 'Test Co').name
  end

  def add_sequence
  	Company.new(name: 'Test Co')
  end

end