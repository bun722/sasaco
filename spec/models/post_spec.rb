require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validation" do
    context "content" do
      context "contentが存在する時" do
        let(:post) { FactoryBot.build(:post) }

        it "Postを保存できる" do
          byebug

        end
      end
      context "contentが存在しない時" do
        let(:post) { FactoryBot.build(:post, content: nil) }

        it "Postは保存できない" do
          expect{ post.save }.to_not change { Post.count }
        end

        it "エラーメッセージが適切に表示される" do

        end
      end
    end
  end
end
