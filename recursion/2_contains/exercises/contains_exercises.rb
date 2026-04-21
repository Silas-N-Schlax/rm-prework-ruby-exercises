def contains?(hash, search_value)
  values = hash.values
  return true if values.include?(search_value)

  nested_hash = values.select { |value| value.is_a?(Hash) }
  nested_hash.any? { |hash|  contains?(hash, search_value)}
end