require 'pry'

def nyc_pigeon_organizer(data)
  solution = {}
  
  data[:color].each do |key, value|
    
    value.each do |name|
      # If pigeon name exists in solution, add the color to their colors, else add a new hash for that pigeon
       
      if solution[name.to_sym]
      # binding.pry
        solution[name.to_sym][:color] << key.to_s
      else
        solution[name.to_sym] = {
          :color => [key.to_s]
        }
      end
   end
  end

  # How to work through gender, and lives
  
    data[:gender].each do |key, value|
      
    value.each do |name|
      
      if solution[name]
        
        solution[name.to_sym][:gender] << key.to_s
      else
          solution[name.to_sym] = {
            :gender => [key.to_s]
        }
    end
end
end

data[:lives].each do |key, value|
  # binding.pry
  
  value.each do |name|
    
    if solution[name]
      
      solution[name.to_sym][:lives] << key.to_s
      
    else
      solution[name.to_sym] = {
        :lives => [key.to_s]
      }
  end
end
end
  binding.pry
 solution
  
  
  # return {:Theo => {
  #   :color => ["purple", "grey"],
  # }
  
end







# def nyc_pigeon_organizer(data)
#   new_hash = {}
  
#   data.each do |key,value|  #key:color, gender, lives. #value: hash
#     value.each do |describe, array|   #describe: purple,male,subway...
#     array.each do |name|   #name: index inside array 
    
#     #check if the empty hash has a name inside
    
#     if new_hash.has_key?(name) #check if value of name key has key(color,gender,lives)  
      
#       if new_hash[name].has_key?(key)  #if name has key already, add the described value at current iteration
      
#       new_hash[name][key] << describe.to_s #if name has no key at current iteration, set new hash
#     else
#       new_hash[name][key]=[describe.to_s]
#     end
#     #set name lvl 1 -> key level 2 with describe as value of hash
#   else
#     new_hash[name] = {key =>[describe.to_s]}
#     end
#   end
#   end
# end
# new_hash
#   end
