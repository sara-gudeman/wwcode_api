class Api::V1::RepliesController < ApplicationController

  def show
    @reply = Reply.find(params[:id])
  end

  def create
    @reply = Reply.create(child_post_id: params[:child_post_id], createdAt: params[:createdAt], parent_post_id: params[:parent_post_id], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @reply = Reply.find(params[:id])
    @reply.update(child_post_id: params[:child_post_id], createdAt: params[:createdAt], parent_post_id: params[:parent_post_id], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    Reply.find(params[:id]).destroy
    format.json {render json: "Reply Removed"}
  end
end
