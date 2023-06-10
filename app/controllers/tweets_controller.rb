class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
        #con @ es variable global
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def new
        @tweet = Tweet.new
    end

    def create
        #debugger frena la aplicación y abre una terminal para interactuar
        tweet = Tweet.new tweet_params
        tweet.user = current_user
        if tweet.save 
            redirect_to tweet, notice: 'Tweet guardado con éxito'
        else
            render :new
        end
    end

    def destroy 
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        respond_to do |format|
        format.html { redirect_to tweets_url, notice: "Tweet was successfully destroyed." }
        format.json { head :no_content }
        end
    end

    private

    def tweet_params 
        params.require(:tweet).permit(:body, :hashtags)
    end

end