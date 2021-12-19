class IdeasController < ApplicationController
  def index
    @idea = Idea.new
  end

  def show
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save!
      flash[:notice]="投稿が完了しました"
      redirect_to root_path
    else
    end
  end

  def update
  end

  def destroy
  end

  private
  def idea_params
    params.require(:idea).permit(:opinion).merge(end_user_id:current_end_user.id)
  end
end
