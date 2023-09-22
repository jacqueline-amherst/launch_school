=begin

--- PROBELM ---

Each element in list contains data and "next" pointing to next element in the list

--- DATA STRUCTURES ---

CLASS ELEMENT:

  #initialize(data, next = nil)
    - save data
    - if `next` has a value, 
      save `next` as a new Element obect with that value
    - otherwise save `next` as nil

  #datum
    - return `data`

  #tail?
    - return `true` if `next` is nil, false otherwise

  #next
    - return `next`

CLASS SIMPLELINKEDLIST

  #push(element)
  #size
  #empty?
  #peek
  #head
  #pop
  #to_a
  #reverse

  ::from_a(array)
    - pushes each element of array to list, 
      starting with last element of array

=end

require 'pry'
require 'pry-byebug'

class Element
  attr_reader :next, :datum

  def initialize(datum, next_element = nil)
    @datum = datum
    # should @next always be converted to an Element object?
    @next = next_element
  end

  def tail?
    !@next
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def push(element)
    list.push(Element.new(element, list.last))
  end

  def size
    list.size
  end

  def empty?
    list.empty?
  end

  def peek
    list.empty? ? nil : list.last.datum
  end

  def head
    list.last
  end

  def pop
    list.pop.datum
  end

  def to_a
    list.reverse.map(&:datum)
  end

  def reverse
    reverse_list = SimpleLinkedList.new

    list.reverse.each do |element|
      data = element.datum
      reverse_list.push(data)
    end

    reverse_list
  end

  def self.from_a(input)
    array = input.to_a.reverse
    array.each_with_object(SimpleLinkedList.new) do |element, result|
      result.push(element)
    end
  end

  private

  attr_accessor :list
end
