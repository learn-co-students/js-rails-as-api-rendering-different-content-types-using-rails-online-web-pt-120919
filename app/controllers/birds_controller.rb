class BirdsController < ApplicationController
  def index
    # @birds = Bird.all         we only need instance variables when rendering to ERB
    # render json: @birds
  

    birds = Bird.all            # since we are rendering to json we don't need instance variables
    render json: birds


    # rendering text

    # render plain: "Hello #{@birds[3].name}"     
    # fetch('http://localhost:3000/birds').then(response => response.text()).then(text => console.log(text))



    # other ways to render json

    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # fetch('http://localhost:3000/birds').then(response => response.json()).then(object => console.log(object))

  end
end
