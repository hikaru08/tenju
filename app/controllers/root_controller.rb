class RootController < ApplicationController
  def index
  end
  def company
  end
  def lifesupport
  end
  def recovery
  end
  def cleaning
  end
  def performance
  end
  def info
    @contact = Contact.new
    render  action: "info"
  end

  def confirm
    # 入力値のチェック
    @contact = Contact.new(contact_params)
    if @contact.valid?
      # OK。確認画面を表示
      render action: 'confirm'
    else
      # NG。入力画面を再表示
      render action: 'info'
    end
  end
 
  def thanks
    # メール送信
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
 
    # 完了画面を表示
    render :action => 'thanks'
  end
  def plan
  end
  private
  def contact_params
    params.require(:contact).permit(:name_full, :name_cana, :phone, :email, :zip1, :zip2, :address1, :address2, :address3, :content)
  end
end
