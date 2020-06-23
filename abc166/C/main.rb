require 'set'
class Peek
  attr_accessor :paths, :height

  def initialize(height)
    self.height = height
    self.paths = Set.new
  end

  def is_good?
    return true if paths.empty?
    height > paths.map(&:height).max
  end
end
H, M = gets.chomp.split.map(&:to_i)
peeks = gets.chomp.split.map(&:to_i).each_with_object([nil]) do |h, pks|
    pks << Peek.new(h)
  end

M.times do
  a, b = gets.chomp.split.map(&:to_i)
  peeks[a].paths.add peeks[b]
  peeks[b].paths.add peeks[a]
end
peeks.shift
puts peeks.count(&:is_good?)
