class NotesController < ApplicationController
  before_action :set_note, only: %i[ show update destroy ]
  before_action :authorized

  # GET /users/user_id/notes
  def index
    @notes = Note.where(user: @user)

    render json: @notes
  end

  # GET /notes/1
  def show
    if @user != @note.user
      render json: "Error", status: :unprocessable_entity
    else
      render json: @note
    end
  end

  # POST /users/user_id/notes
  def create
    @note = Note.new(note_params)
    @note.user = @user

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @user != @note.user
      render json: "Error", status: :unprocessable_entity
    else
      if @note.update(note_params)
        render json: @note
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /notes/1
  def destroy
    if @user != @note.user
      render json: "Error", status: :unprocessable_entity
    else
      @note.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:title, :body, :user_id)
    end
end
