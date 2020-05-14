class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
  # add create method here
  # create a new post, save it to the db
  # redirect to the new resource's show page
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save

    redirect_to post_path(@post)

  # code from the rails console to create new post
  # Post.new
  # post.title = "Title Goes Here"
  # post.decription = "Desc goes here.."
  # post.save
  end
end
