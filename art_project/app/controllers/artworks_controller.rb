class ArtworksController < ApplicationController
    def index
        # @artworks =Artwork.all
        user = User.find(params[:id])
        artworks = user.artworks
        render json: artworks
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])
        @artwork.update(artwork_params)
        render json: @artwork 
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy 
        redirect_to artworks_url 
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end 