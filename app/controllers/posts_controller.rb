class PostsController < ApplicationController
   
   def index
       @posts = Post.where("user_id=?",params[:user_id]).order("created_at DESC")
   end

   def new
       @post = Post.new
   end

   def create
       @post = Post.new(post_params)

       if @post.save
            PostMailer.post_creation_mail(@post.email_id)
            redirect_to @post
       else
           render 'new'
       end
   end

   def show
    @post = Post.find(params[:id])
   end

   def update
        @post = Post.find(params[:id])
       if @post.update(post_params)
           redirect_to @post
       else
           render 'edit'
       end
   end

   def edit
       @post = Post.find(params[:id])
   end

   def destroy
       @post = Post.find(params[:id])
       @post.destroy

       redirect_to posts_path

   end

   #method to filter a post by title
   def getByTitle
    post=Post.where("title =?",params[:title])
    #change the param
    puts(post)
    render json:PostSerializer.new(post)

   end 
   private

   def post_params
       params.require(:post).permit(:title, :content, :email_id)
   end

   # def find_post
   # 	@post = Post.find(params[:id])
   # end

end