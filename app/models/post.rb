class Post < ApplicationRecord
    #These validations will be called if the object is saved into db
   #validates:title, presence:true  #validation for title field
   #validates:content,presence:true #validation for content field

   
   belongs_to :user
   has_many:comments
end
