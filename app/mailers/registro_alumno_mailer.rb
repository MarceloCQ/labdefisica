class RegistroAlumnoMailer < ActionMailer::Base
	default from: "inscripcioneslabfisica@gmail.com"

    def registro_laboratorio(user)
	    @user = user
	    mail(to: @user.email, subject: 'Registro de laboratorio de física exitoso.')
  	end
end
