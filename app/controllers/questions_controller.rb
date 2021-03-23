
class QuestionsController < ApplicationController
    def new

        @question = Question.new

    end



    def create
        @question = Question.new(params.require(:question).permit(:title, :text))
    
            if @question.save
                flash[:notice] = "Question was created successfully."

                redirect_to @question
            else
                render 'new'
            end

    end

    def show
        @question = Question.find(params[:id])
    end

    def index
        @questions = Question.all
    end
end
