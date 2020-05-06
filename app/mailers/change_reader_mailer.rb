class ChangeReaderMailer < ApplicationMailer
  def change_reader_mail(new_reader, team)
    @new_reader = new_reader
    @team = team
    mail to: @new_reader.email, subject: "リーダー変更の確認メール"
  end
end
