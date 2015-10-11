class Plugboard

  attr_accessor :pairs
  
  # Default value allows for an empty constructor
  def initialize(wires = "")
  
    @pairs = Hash.new
    
    # Raise exceptions for too many or incomplete wires
    raise "Too many wires defined" if wires.length > 20
    raise "Only partial wire definition" if wires.length.odd?
    
    for i in (0..wires.length - 2).step(2) do
    
      # Raise an exception if any duplicates exist
      if @pairs.include?(wires[i]) or @pairs.has_value?(wires[i]) \
         or @pairs.include?(wires[i+1]) or @pairs.has_value?(wires[i+1])
        raise "Must have only one mapping per wire end" 
      end
      @pairs[wires[i]] = wires[i+1]
    end
    
    @pairs.merge!(@pairs.invert)    # Consolidate keys and values
  end
  
  def process(wire)
    @pairs[wire] || wire    # If no wire connects to C...
  end
  
end
