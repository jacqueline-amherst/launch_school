class CircularQueue
  attr_accessor :queue, :element_order

  def initialize(size)
    @queue = Array.new(size)
    @element_order = []
  end

  def enqueue(element)
    queue[find_next_index] = element
    element_order.push(element)
  end

  def dequeue
    element = element_order.shift
    index = queue.index(element)
    queue[index] = nil
    element
  end

  private

  def find_next_index
    if element_order.empty?
      0
    elsif queue.include?(nil)
      queue.index(nil)
    else
      queue.index(element_order.shift)
    end
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

=begin
  - need the actual `queue` to store the actual values (i.e. [nil, 4, 3, 6])
  - as well as an array `element_order` for the order the elements were placed in the queue (i.e. [3, 4, 6])
  
  - the #dequeue method removes the first element from `element_order`, then uses the return value of that removal to also remove the same element from `queue`.
    - element must be replaced with `nil`, method must return the element that was dequeued

  - #enqueue takes a single argument (the element to enqueue)
    - if `element_order` is empty, new element replaces first nil in `queue`
    - if `element_order` is not empty, new element replaces first `nil` in `queue` after the index of the last element of `element_order`
    - otherwise new element replaces the first element from `element_order` (oldest element must also be removed from queue)
=end