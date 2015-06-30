The Odin Project Advanced Building Blocks Project 2

Enumerable Methods

You learned about the Enumerable module that gets mixed in to the Array and Hash classes (among others) and provides you with lots of handy iterator methods. To prove that there's no magic to it, you're going to rebuild those methods.

Your Task
Create a script file to house your methods and run it in IRB to test them later.
Add your new methods onto the existing Enumerable module. Ruby makes this easy for you because any class or module can be added to without trouble ... just do something like:
    module Enumerable
      def my_each
        # your code here
      end
    end
Create #my_each, a method that is identical to #each but (obviously) does not use #each. You'll need to remember the yield statement. Make sure it returns the same thing as #each as well.
Create #my_each_with_index in the same way.
Create #my_select in the same way, though you may use #my_each in your definition (but not #each).
Create #my_all? (continue as above)
Create #my_any?
Create #my_none?
Create #my_count
Create #my_map
Create #my_inject
Test your #my_inject by creating a method called #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40
Modify your #my_map method to take a proc instead.
Modify your #my_map method to take either a proc or a block, executing the block only if both are supplied (in which case it would execute both the block AND the proc).