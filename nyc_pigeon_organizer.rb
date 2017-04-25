require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  names = []
  data.each do |attribute, info|
    info.each do |key, list|
      list.each do |name|
        unless names.include?(name)
          pigeon_list[name] = {:color => [], :gender => [], :lives => []}
          names << name
        end
      end
    end
  end
  data.each do |attribute, info|
    info.each do |key, list|
      list.each do |name|
        pigeon_list[name][attribute] << key.to_s
      end
    end
  end
pigeon_list
end
