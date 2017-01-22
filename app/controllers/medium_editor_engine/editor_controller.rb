require_dependency "medium_editor_engine/application_controller"

module MediumEditorEngine
  class EditorController < ApplicationController
    before_action :set_editor, only: [:show, :edit, :update, :destroy]

    # GET /editors
    def index
    end

    # GET /editors/1
    def show
    end

    # GET /editors/new
    def new
      @editor = Editor.new
    end

    # GET /editors/1/edit
    def edit
    end

    # POST /editors
    def create
      @editor = Editor.new(editor_params)

      if @editor.save
        redirect_to @editor, notice: 'Editor was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /editors/1
    def update
      if @editor.update(editor_params)
        redirect_to @editor, notice: 'Editor was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /editors/1
    def destroy
      @editor.destroy
      redirect_to editors_url, notice: 'Editor was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_editor
        @editor = Editor.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def editor_params
        params.fetch(:editor, {})
      end
  end
end
