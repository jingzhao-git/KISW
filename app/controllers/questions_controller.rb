
class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]

    def new

        @question = Question.new

    end

    def edit
    end


    def create
        @question = current_user.questions.new(question_params)

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
        @answer = @question.answers.new
        @answers = @question.answers.includes(:user)
    end

    def index
        if params[:my_quesstion]
            @questions = current_user.questions
        elsif params[:my_answer]
            question_ids = current_user.answers.pluck(:question_id)
            @questions = Question.where(id: question_ids)
        else
            @questions = Question.all
        end
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
        params.require(:question).permit(:title, :text, :catagory_id, :user_id)
    end

end
