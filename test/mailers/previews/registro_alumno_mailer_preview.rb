# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class RegistroAlumnoMailerPreview < ActionMailer::Preview
  def registro_laboratorio_preview
    RegistroAlumnoMailer.registro_laboratorio(User.first)
  end
end