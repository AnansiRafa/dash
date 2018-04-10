class PostsController < ApplicationController
before_action :setPost, only: [:edit, :update, :show, :destroy, :sold]
before_action :requireSameUser, except: [:index, :show]
before_action :requireSameUser, only: [:edit, :update, :destroy, :sold]

def index
  @posts = Post.all
end

def new
  @comment = Comment.new(post_id: params[:post_id])
end


def create
  @post = Post.new(postParams)
  @post.user = currentUser
  if @post.save
    flash[:success] = "Post successfully added."
    redirect_to post_path(@post)
  else
    render 'new'
  end
end

def update
  if @post.update(postParams)
    flash[:success] = "Post successfully updated."
    redirect_to post_path(@post)
  else
    render 'edit'
  end
end

<<<<<<< HEAD
def show
end

def edit
end
=======
  # POST /posts
  # POST /posts.json
  def create
    @course = Course.find(params[:course_id])
    # @post = Post.new
    # @post.course_id = params[:course_id]
    @post = @course.posts.build(post_params)
    # @post.save
    # binding.pry
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { redirect_to Course.find(params[:post][:course_id]) }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
>>>>>>> 8a536953aef8c96fecc8aaf1df5b3bd7f0013330

def sold
  @post.toggle(:sold)
  @post.save
  redirect_to post_path(@post)
end

def destroy
  @post.destroy
  flash[:danger] = "Item successfully deleted."
  redirect_to posts_path
end

private
  def postParams
    params.require(:post).permit(:title, :price, :description,   category_ids:[])
  end

  def setPost
    @post = Post.find(params[:id])
  end

<<<<<<< HEAD
  def requireSameUser
    if currentUser != @post.user and !currentUser.admin
      flash[:danger] = "You can only edit or delete your own items"
      redirect_to root_path
=======
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:course_id, :body)
>>>>>>> 8a536953aef8c96fecc8aaf1df5b3bd7f0013330
    end
  end
end
