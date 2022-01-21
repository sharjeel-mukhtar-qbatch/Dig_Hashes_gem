require 'decrypthash/hash'
module Decrypt_hashing
  def self.checking_error(value)
    #untill it get the value of hashes in the pattern that is given by the user
    unless value.respond_to?(:decrypt)
      #it will show the error if not found
      raise TypeError, "#{value.class.name} does not have #decrypt method"
    end
  end
end

# class Jsontorubyobject  
    # include ActiveModel::Serializers::JSON
    # @@array = Array.new
    # attr_accessor :name, :age, :awesome
    # def self.all_instances
    #   @@array
    # end

    # def format_hash_data
    #   self.inject({}) do |hash, record|
    #     # each record has the following format => [["unit_name", "axis.slug"]=>average_value(float)]
    #     keys, value = record
    #     # now keys has ["unit_name", "axis.slug"] and values equals average_value
    #     hash[keys.first] ||= {}
    #     hash[keys.first][keys.last] = value.to_f
    #     hash
    #   end
    # end

    # def self.details
    #   puts "Parse the jason to ruby object"
    # end
    # def attributes=(hash)
    #   hash.each do |key, value|
    #     send("#{key}=", value)
    #   end
    # end
    # def self.values (data)
    #     # require 'json'
    #     # object = JSON.parse(json, object_class: OpenStruct)
    #     # for a in 1..2 do
    #       p=Jsontorubyobject.new
    #       # @@array << p.from_json(data)
    #       p = p.from_json(data)
    #     # end
    #     # return @@array
    #     return p
    # end
    # def attributes
    #   instance_values
    # end
    # def self.merge_pdf
    #     pdf = CombinePDF.new
    #     pdf << CombinePDF.load("R1.pdf")
    #     pdf << CombinePDF.load("R2.pdf")
    #     pdf.number_pages
    #     pdf.save "output.pdf"
    # end
  # end
#   parse a json format to a custom object
  