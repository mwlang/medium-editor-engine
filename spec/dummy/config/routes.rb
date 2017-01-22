Rails.application.routes.draw do
  mount MediumEditorEngine::Engine => "/editor"
end
