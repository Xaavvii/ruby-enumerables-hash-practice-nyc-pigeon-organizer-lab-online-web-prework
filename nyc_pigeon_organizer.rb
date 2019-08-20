def nyc_pigeon_organizer(pigeon_hash_list = {
                                              :color =>
                                              {
                                                :purple => ["Theo", "Peter Jr.", "Lucky"],
                                                :grey => ["Theo", "Peter Jr.", "Ms. K"],
                                                :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
                                                :brown => ["Queenie", "Alex"]
                                              },
                                              :gender =>
                                              {
                                                :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
                                                :female => ["Queenie", "Ms. K"]
                                              },
                                              :lives =>
                                              {
                                                "Subway" => ["Theo", "Queenie"],
                                                "Central Park" => ["Alex", "Ms. K", "Lucky"],
                                                "Library" => ["Peter Jr."],
                                                "City Hall" => ["Andrew"]
                                              }
                                            })
  organized_hash_list = {}
  pigeon_hash_list.each do |pigeon_name_key, pigeon_name_values|

    pigeon_name_values.each do |pigeon_attribute_symbol_key, array_of_string_attributes|

      array_of_string_attributes.each do |string_attribute|;

        if !organized_hash_list[string_attribute]
          organized_hash_list[string_attribute] = {};
        end;

        if !organized_hash_list[string_attribute][pigeon_name_key]
          organized_hash_list[string_attribute][pigeon_name_key] = [];
        end;

        organized_hash_list[string_attribute][pigeon_name_key] << pigeon_attribute_symbol_key.to_s;

      end;
    end;
  end;
  return(organized_hash_list);
end;

p(nyc_pigeon_organizer);
puts;


p(nyc_pigeon_organizer({
                        :color =>
                        {
                          :brown => ["Luca"],
                          :black => ["Lola"],
                        },
                        :gender =>
                        {
                          :male => ["Luca"],
                          :female => ["Lola"]
                        },
                        :lives =>
                        {
                          "Central Park" => ["Lola"],
                          "Library" => ["Luca"]
                        }
                      }));
