require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def reverse!
    previous = nil
    current = @head

    while current != nil
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end

    @head = previous
  end

end
