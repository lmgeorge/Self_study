kaprekar = [9, 24, 297, 31]
#k_length = kaprekar.map { |k| (k**2).to_s.length.to_f}
k_split = kaprekar.map { |n| (n**2).to_s.split "" }
result = k_split.map! { |f| (f.first(((f.count.to_f) / 2).floor).join.to_i) + (f.last(((f.count.to_f) / 2).ceil).join.to_i)}
print  result