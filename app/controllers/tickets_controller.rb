class TicketsController < ApplicationController
  def destroy 
    ticket = current_user.tickets.find_by!(event_id: params[:event_id])
    ticket.destroy! 
    redirect_to event_path(params[:event_id]), notice: "このイベントの参加をキャンセルしました"
  end
end
