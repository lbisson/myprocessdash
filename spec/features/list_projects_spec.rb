require 'rails_helper'



describe "Viewing the list of projects" do
	
	it "shows the list of projects" do
		p1 = Project.create(proj_name: "SRT", 
					description: "508 compliance checker for solicitatoins",
					client: "GSA",
					status: "current")

		p2 = Project.create(proj_name: "508 Maturity", 
					description: "508 Maturity Program Dashboard app",
					client: "GSA",
					status: "current")

		p3 = Project.create(proj_name: "CMMI", 
					description: "Personal Software Process helper",
					client: "Self",
					status: "current")

		visit projects_url

		expect(page).to have_text("3 Projects")
		expect(page).to have_text(p1.proj_name)
		expect(page).to have_text(p1.description)
		expect(page).to have_text(p1.client)
		expect(page).to have_text(p1.status)

		expect(page).to have_text(p2.proj_name)
		expect(page).to have_text(p2.description)
		expect(page).to have_text(p2.client)
		expect(page).to have_text(p2.status)

		expect(page).to have_text(p3.proj_name)
		expect(page).to have_text(p3.description)
		expect(page).to have_text(p3.client)
		expect(page).to have_text(p3.status)

	end

end

describe "Viewing project details page" do

	it "shows the project details" do
			p1 = Project.create(proj_name: "SRT", 
			description: "508 compliance checker for solicitatoins",
			client: "GSA",
			status: "current")


		visit project_url(1)

		expect(page).to have_text(p1.proj_name)
		expect(page).to have_text(p1.description)
		expect(page).to have_text(p1.client)
		expect(page).to have_text(p1.status)

	
	end
end





