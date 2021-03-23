
class QuestionsController < ApplicationController
    def new

        @question = Question.new

    end

    def edit
        @question = Question.find(params[:id])
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

    def update
        @question = Question.find(params[:id])
        if @question.update(params.require(:question).permit(:title, :text))
            flash[:notice] = "Question was updated successfully."
            redirect_to @question
        else
            render 'edit'
        end
    end
    def show
        @question = Question.find(params[:id])
    end

    def index
        @questions = Question.all
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy
    
        redirect_to questions_path
    end
end
