require 'rails_helper'

describe "Navigating project pages" do
	
	it "allows navigation from the project details page to the listing page" do
		p1 = Project.create(project_attr)
		visit project_url(p1)

		click_link "All Projects"

		expect(current_path).to eq(projects_path)
	end

	it "allows navigatin from listing page to detail page" do
		p1 = Project.create(project_attr)

		visit projects_url

		click_link p1.proj_name
	end
end