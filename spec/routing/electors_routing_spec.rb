require 'rails_helper'

RSpec.describe ElectorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/electors').to route_to('electors#index')
    end

    it 'routes to #new' do
      expect(get: '/electors/new').to route_to('electors#new')
    end

    it 'routes to #show' do
      expect(get: '/electors/1').to route_to('electors#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/electors/1/edit').to route_to('electors#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/electors').to route_to('electors#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/electors/1').to route_to('electors#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/electors/1').to route_to('electors#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/electors/1').to route_to('electors#destroy', id: '1')
    end
  end
end
