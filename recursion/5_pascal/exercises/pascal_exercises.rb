def pascal(row_number)
  return [1] if row_number == 1

  last_row = pascal(row_number - 1)


  new_row = [1]
  for i in 0...last_row.length
    add = last_row[i + 1] || 0
    new_row << last_row[i] + add
  end
  new_row
end
