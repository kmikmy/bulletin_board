# -*- coding: utf-8 -*-
class CommentsController < ApplicationController
  respond_to :html, :json

  def index
    @comments = Comment.order("id DESC").paginate(:page => params[:page], :per_page => 10)
    @comment = Comment.new
    respond_with(@comments)
  end

  def show
    @comment = Coment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    session[:name] = @comment.name
    session[:mail_address] = @comment.mail_address
    respond_with(@comment, :location => comments_url)
  end

  def search
    @comments = Comment.search(params[:q]).paginate(:page => params[:page], :per_page => 10)
    @comment = Comment.new
    render "index"
  end

  private
  def comment_params
    params.require(:comment).permit(:name,:mail_address,:comment)
  end

end
