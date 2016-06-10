class InteractionsController < ApplicationController
  def index
    @interactions = Interaction.all
  end

  def show
    @interaction = Interaction.find(params[:id])
  end

  def new
    @interaction = Interaction.new
  end

  def create
    @interaction = Interaction.new
    @interaction.connection_id = params[:connection_id]
    @interaction.user_id = params[:user_id]
    @interaction.notes = params[:notes]
    @interaction.date = Chronic.parse(params[:date])
    @interaction.event = params[:event]

     a = @interaction.connection_id

    if @interaction.save
      redirect_to ("/connections/" + a), :notice => "Interaction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interaction = Interaction.find(params[:id])
  end

  def update
    @interaction = Interaction.find(params[:id])

    @interaction.connection_id = params[:connection_id]
    @interaction.user_id = params[:user_id]
    @interaction.notes = params[:notes]
    @interaction.date = params[:date]
    @interaction.event = params[:event]

    a = @interaction.connection_id

    if @interaction.save
      redirect_to ("/connections/" + a), :notice => "Interaction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])

    @interaction.destroy

    a = @interaction.connection_id
    redirect_to ("/connections/" + a), :notice => "Interaction deleted."
  end
end
