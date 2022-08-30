class Post < ApplicationRecord
    #These validations will be called if the object is saved into db
   validates:title, presence:true  
   validates:content,presence:true
    
end
