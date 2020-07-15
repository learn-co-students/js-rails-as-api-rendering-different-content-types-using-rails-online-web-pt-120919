class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render plain: "Hello #{@birds[3].name}"
#   end

# def index
#   @birds = Bird.all
#   render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
# end

# def index
#   @birds = Bird.all
#   render json: { message: 'Hashes of data will get converted to JSON' }
# end

# def index
#   @birds = Bird.all
#   render json: ['As','well','as','arrays']
# end

# def index
#   @birds = Bird.all
#   render json: @birds
# end

def index
  @birds = Bird.all
  render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
end

end
