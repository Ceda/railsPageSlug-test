Gretel::Crumbs.layout do
  
  # Remember to restart your application after editing this file.
  
  # Example crumbs:
  
  # crumb :root do
  #   link "Home", root_path
  # end
  
  # multiple links per crumb (recursive links for parent categories)
   crumb :category do |category|
     parents = [category]

     parent_category = category
     while parent_category = parent_category.category
       parents.unshift parent_category
     end

     parents.each do |category|
       link category.title, category
     end
   end
  
  # crumb :projects do
  #   link "Projects", projects_path
  # end
  
  # crumb :project do |project|
  #   link lambda { |project| "#{project.name} (#{project.id.to_s})" }, project_path(project)
  #   parent :projects
  # end
  
  # crumb :project_issues do |project|
  #   link "Issues", project_issues_path(project)
  #   parent :project, project
  # end
  
  # crumb :issue do |issue|
  #   link issue.name, issue_path(issue)
  #   parent :project_issues, issue.project
  # end

end