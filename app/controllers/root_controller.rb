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
    if params[:send]      
      # メール送信
      @contact = Contact.new(contact_params)
      ContactMailer.received_email(@contact).deliver
      # 送信が押されれば完了画面
      render action: 'thanks'
    elsif params[:back]
      # 戻る画面が押されれば入力画面
      @contact = Contact.new(contact_params)
      render action: 'info'
    end
  end
  def plan
  end
  private
  def contact_params
    params.require(:contact).permit(:name_full, :name_cana, :phone, :email, :zip1, :zip2, :address1, :address2, :address3, :content)
  end
end
