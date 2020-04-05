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
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      render :action => 'done'
    else
      redirect_to root_path
    end
  end

  def done
  end

  def plan
  end

  private
  def contact_params
    params.permit(:name_full, :name_cana, :phone, :email, :zip1, :zip2, :address1, :address2, :address3, :content)
  end
end
