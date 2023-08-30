require 'csv'

# 2列の場合
CSV.foreach("hoge.csv", headers: true) do |row|
  p row[0]
  p row[1]
rescue StandardError
  next
end
