
class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]

    def new

        @question = Question.new

    end

    def edit
    end


    def create
        @question = Question.new(question_params)
    
            if @question.save
                flash[:notice] = "Question was created successfully."

                redirect_to @question
            else
                render 'new'
            end

    end

    def update
        if @question.update(question_params)

            flash[:notice] = "Question was updated successfully."
            redirect_to @question
        else
            render 'edit'
        end
    end
    def show
    end

    def index
        @questions = Question.all
    end

    def destroy
        @question.destroy
    
        redirect_to questions_path
    end

    private
    def set_question
        @question = Question.find(params[:id])
    end

    def question_params
        params.require(:question).permit(:title, :text)
    end

end
