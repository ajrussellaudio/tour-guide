class ToursController < ApplicationController
  before_action :set_point, only: [:show]

  # GET /tours
  def index
    @tours = Tour.all
    render json: @tours.as_json({
      include: {
        points: {
          only: [:name]
        }
      },
      except: [:created_at, :updated_at]
    })
  end

  # GET /tours/1
  def show
    render json: @tour.as_json({
      include: {
        points: {
          except: [:created_at, :updated_at, :tour_id]
        }
      },
      except: [:created_at, :updated_at]
    })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @tour = Tour.find(params[:id])
    end
end
