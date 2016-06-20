class ImagesController < ApplicationController
def index




	
end



def post_params
      params.require(:image).permit!
    end
end
