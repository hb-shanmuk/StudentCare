class StudentMailer < ActionMailer::Base
	default :from => 'default@myapp.com'

  def student_schedule(student,email)
  	@student = student   
    mail(to: email, subject: 'StudentCare Site - Schedules')
  end
  
end
