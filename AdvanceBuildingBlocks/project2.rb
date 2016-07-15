    module Enumerable
      def my_each
      	  
         for i in self
         yield(i) if block_given?
         end
        self
      end

      def my_map &blocknow
      	 a=[] 
         for i in self
         a<< (blocknow.call i)
         i+=1
         end
        a
      end
  

      def my_inject
      	 result = self[0]
      	 i=1
      	 for i in (1...(self.size))
         result = yield(result,self[i])
         i+=1
         end
         result
      end

	   def my_each_with_index
      	  i=0
         for i in (0...(self.size))
         yield(i,self[i]) if block_given?
         i+=1
         end
        self
      end

      def my_all?

      	self.my_each {|var| return false if !(yield(var))}
      	return true

      end

      def my_any?

      	self.my_each {|var| return true if (yield(var))}
      	return false

      end

      def my_count

      	self.my_each {|var| return true if (yield(var))}
      	return false

      end
      
      def my_none?
      	a=self.my_any? {|var| yield(var)}
        return (!a)
      end


      def my_select
        loc=[]
      	self.my_each { |var| loc<<var if yield(var)}	               
        loc
      end
      
      	
      	

    end


a=[1,4,6].my_map { |acc| acc*2}
puts a