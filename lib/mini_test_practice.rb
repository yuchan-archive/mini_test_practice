require "mini_test_practice/version"

module MiniTestPractice
    class Calculator
        class << self
            def odd?(num)
                return ((num % 2) != 0) 
            end
            
            def check_number?(num)
                if (num.is_a? Integer) == false
                    return false
                end

                (num.to_s.start_with?("0") == false &&
                 num.to_s.length == 4 &&
                 num.to_i % 2 == 0)
            end
    
            def enough_length?(str)
                if str.length < 3
                    return false
                end

                if str.length > 8
                    return false
                end

                return true
            end
            
            def divide(a,b)
                return a/b
            end

            def fizz_buzz(number)
                if number.to_i % 3 == 0 && number.to_i % 5 == 0
                    return "FizzBuzz"
                elsif number.to_i % 3 == 0
                    return "Fizz"
                elsif number.to_i % 5 == 0
                    return "Buzz"
                end
                return ""
            end

            def sayHello
                puts "hello"
            end
        end
    end
end
