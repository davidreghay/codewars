def reject list, &block
  list.reject { |el| block.call(el) }
end