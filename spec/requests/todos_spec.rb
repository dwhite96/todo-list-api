require 'rails_helper'

RSpec.describe "Todos", type: :request do
  let(:todo) { todo = create(:todo) }

  let(:completed_todo) { completed_todo = create(:completed_todo) }

  let(:todo_list) { todo_list = create_list(:todo, 5) }

  describe "GET /todos" do
    it "sends a list of todos" do
      get todos_path
      expect(response).to have_http_status(200)
      expect(json["data"].length).to eq(10)
    end
  end

  describe "GET /todo" do
    it "sends one todo" do
      get todos_path, params: {id: todo.to_param}
      expect(response).to have_http_status(200)
      expect(json["data"].length).to eq(1)
    end
  end
end
