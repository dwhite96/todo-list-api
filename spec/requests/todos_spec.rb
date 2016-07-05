require 'rails_helper'

RSpec.describe "Todos", type: :request do
  let(:todo) { todo = create(:todo) }

  let(:completed_todo) { completed_todo = create(:completed_todo) }

  let(:todo_list) { todo_list = create_list(:todo, 5) }

  let(:valid_attributes) { attributes_for :todo }

  let(:invalid_attributes) { attributes_for :todo, title: "" }

  describe "GET /todos" do
    it "responds with a list of todos" do
      todo_list
      get todos_path
      expect(response).to have_http_status(200)
      expect(json["data"].length).to eq(5)
    end
  end

  describe "GET /todos/:id" do
    it "responds with one todo" do
      get todos_path, params: { id: todo.to_param }
      expect(response).to have_http_status(200)
      expect(json["data"].length).to eq(1)
    end
  end

  describe "POST /todos" do
    context "with valid data" do
      it "responds with http status code 201" do
        post todos_path, params: { todo: valid_attributes }
        expect(response).to have_http_status(201)
      end
    end

    context "with invalid data" do
      it "responds with http status code 422" do
        post todos_path, params: { todo: invalid_attributes }
        expect(response).to have_http_status(422)
      end

      it "responds with a 'can't be blank' error message" do
        post todos_path, params: { todo: invalid_attributes }
        expect(json["title"]).to eq(["can't be blank"])
      end
    end
  end

  describe "PUT /todos/:id" do
    context "with valid data" do
      let(:new_attributes) { attributes_for :todo, title: "Test an updated todo" }

      it "responds with http status code 200" do
        put "/todos/#{todo.id}", params: { todo: new_attributes }
        expect(response).to have_http_status(200)
      end
    end

    context "with invalid data" do
      it "responds with http status code 422" do
        put "/todos/#{todo.id}", params: { todo: invalid_attributes }
        expect(response).to have_http_status(422)
      end

      it "responds with a 'can't be blank' error message" do
        put "/todos/#{todo.id}", params: { todo: invalid_attributes }
        expect(json["title"]).to eq(["can't be blank"])
      end
    end
  end

  describe "DELETE /todos/:id" do
    it "responds with http status code 204" do
      delete "/todos/#{todo.id}"
      expect(response).to have_http_status(204)
    end
  end
end
