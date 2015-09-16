json.array!(@athletes) do |athlete|
  json.extract! athlete,
                :id,
                :first_name,
                :last_name,
                :birth_date,
                :country,
                :city
end