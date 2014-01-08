require 'spec_helper'

describe 'admin functionality', js: true do
  let(:product) { @product }

  before(:each) do
    user = create(:admin_user, :email => "admin@person.com", :password => "password", :password_confirmation => "password")
    sign_in_admin!(user)
    @product = create :product, :name => "The Product"
  end

  it "should properly add a video" do
    visit spree.new_admin_product_video_path(product)
    fill_in 'video_youtube_ref', :with => '0IJoKuTlvuM'
    click_button 'Update'

    page.should have_content('Video has been successfully created!')
    page.should have_content('0IJoKuTlvuM')
  end
end
