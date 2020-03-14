module Versions
  module V1
    module TaskDisplays
      extend ActiveSupport::Concern
      included do
        namespace :tasks do
          namespace :displays do
            desc 'タスク一覧を取得する'
            get '', jbuilder: 'v1/task_displays/index' do
              @tasks = Task.all
            end
          end
        end
      end
    end
  end
end
