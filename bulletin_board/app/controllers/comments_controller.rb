# -*- coding: utf-8 -*-
class CommentsController < ApplicationController
  respond_to :html, :json

  def index
    @comments = Comment.all
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
    respond_with(@comment, :location => comments_url)
  end

  private
  def comment_params
    params.require(:comment).permit(:name,:mail_address,:comment)
  end

end
