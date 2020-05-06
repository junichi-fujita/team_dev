class DeletionNotificationMailer < ApplicationMailer
  def deletion_notification_mail(agenda)
    @agenda = agenda
    mail(
      to: @agenda.team.users.pluck(:email),
      subject: "アジェンダ#{@agenda.title}を削除"
      )
  end
end
