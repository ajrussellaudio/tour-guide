class PointsController < ApplicationController
  before_action :set_point, only: [:show]

  # GET /points
  def index
    @points = Point.all

    render json: @points.as_json({
      except: [:created_at, :updated_at]
    })
  end

  # GET /points/1
  def show
    render json: @point.as_json({
      except: [:created_at, :updated_at]
    })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end
end
