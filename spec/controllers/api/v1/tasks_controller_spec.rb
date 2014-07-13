require 'rails_helper'

RSpec.describe Api::V1::TasksController, :type => :controller do

  describe "GET #index" do

    let!(:tasks) { create_list(:task, 2) }
    before(:each) { get :index }

    it { is_expected.to respond_with 200 }
    
    it "returns all tasks" do
      expect(json['tasks'].count).to be 2
    end

  end

  describe "GET #show" do
    context "with existing task" do
      let!(:task) { create(:task) }
      before(:each) { get :show, id: task.id }

      it { is_expected.to respond_with 200}

      it "returns requested task" do
        expect(json['task']['title']).to eq task.title
      end

    end
  end

end
