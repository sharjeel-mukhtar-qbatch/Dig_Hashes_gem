unless Hash.instance_methods.include?(:decrypt)
    #class_eval and instance_eval
    # instance_eval is use to define a class method
    Hash.class_eval do
    # class_eval is used to define a instance level method
      def decrypt(key, *args)
        # getting value from here as key value pair
        hash_value = self[key]
        #checking the is it nill or zero so return it from here
        if hash_value.nil? || args.length == 0
            #from here it will return
            return hash_value
        end
        #checking error is does not exist
        Decrypt_hashing.checking_error(hash_value)
        # recalling the method until it get the required value
        hash_value.decrypt(*args)
      end
    end
  end