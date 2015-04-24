Rails.application.routes.draw do
 

 
root 'signs#index'

    resources :students do
      resources :questions, only: [:index, :show] do
        resources :question_responses
        end
      end

    resources :signs

    resources :adults

end
