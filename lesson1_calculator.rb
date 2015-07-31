# calculator project from lesson 1

	require 'Pry'
	num1 = ' '
	num2 = ' '
    
    def valid_number(number)
        	begin
	     	  number = Float(number) # testing for valid numeric or float
	     	rescue ArgumentError     # rescue to print error mess, instead of aborting
	     	  puts "Not an integer"
	     	end
    end

    def numeric_or_float(number)      # convert integers back to numeric
         if number % 1 == 0			   # leave float alone	
         	number = number.to_i
         end
         number
    end	
	
	def get_first_number(first_number)
		while first_number != 'x'
	     print " Enter first number or 'x' to exit: "
	     first_number = gets.chomp
	     if first_number == 'x'
	     	break
	     elsif 
	     	first_number = valid_number(first_number)
	     	break
	     end
       end      
       if first_number != 'x'
          first_number = numeric_or_float(first_number)  
       end
           first_number       
   end

 num1 = get_first_number(num1)

   
    def get_second_number(second_number,first_number)
	  if first_number != 'x'	 
       		while second_number != 'x'
	           print " Enter second number or 'x' to exit: "
	           second_number = gets.chomp
	          if second_number == 'x'
	         	break
	      	  elsif 
	      	  	 second_number = valid_number(second_number)
	     	   break
	          end
	       end
       end
       if second_number != 'x'
          second_number = numeric_or_float(second_number) 
       end
          second_number
    end

	 num2 = get_second_number(num2,num1)


	response = 0
	while response != 5
       if (num1 == 'x') || (num2 == 'x') 	  
       	  break
	   else
	      print "1) Add 2) Subtract 3) Multiply 4) Divide 5) exit: "
	      response = gets.chomp.to_i 
	      if (response >= 1) && (response <= 5)
 	         case response
              when 1 
               	puts "the answer is #{num1 + num2}"
               when 2
       		  	puts "the answer is #{num1 - num2}"       		  	
              when 3
              	puts "the answer is #{num1 * num2}"              	
              when 4
              	if (num1 == 0) || (num2 == 0)
              		puts " can not divide by zero"
                else
              	   puts "the answer is #{num1.to_f / num2.to_f}"  
              	end     	
              when 5
                abort("Program over")
              end
           else
           	  puts "invalid response"
           end  
           if (response >= 1) && (response <= 5)
               num1 = get_first_number(num1)
               num2 = get_second_number(num2,num1)
            end
        end
     end

     