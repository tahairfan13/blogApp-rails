class PostsController < ApplicationController
  before_action :require_user, except: [:index,:show]


  def index
   @posts = Post.all.filter_category(params[:category])
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
      if @post.save
       flash[:success]="Your blog is successfully created"
       redirect_to edit_post_path(@post)
      else
       render 'new'
      end
  end

  def edit
    @post = Post.find(params[:id])
    post_authenticate
  end

  def update
    @post = Post.find(params[:id])
    post_authenticate
      if @post.update(post_params)
        flash[:success]="Your blog is successfully updated"
        redirect_to post_path(@post)
      else
        render 'edit'
      end
  end

  def destroy
    @post = Post.find(params[:id])
    post_authenticate
    @post.destroy
   flash[:success] = "Your blog is successfully deleted"
   redirect_to root_path
  end

  def like
    @post = Post.find(params[:id])
    @user = @post.user
    @likes = @post.likes.where(user: current_user)
   if !@like.any?
     @like = Like.new(flag:true,user:current_user,post:@post)
     @like.save
     redirect_to post_path(@post)
   else
      @likes.destroy_all
     redirect_to post_path(@post)
   end
  end



  private

  def post_params
    params.require(:post).permit(:title,:description,:category_id, :image)
  end

  def post_authenticate
    if current_user != @post.user
     flash[:danger] = "You are not allowed to perform this action"
      redirect_to root_path
    end

  end


end
