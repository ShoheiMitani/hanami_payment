module Web::Controllers::Items
  class Destroy
    include Web::Action

    def call(params)
      ItemRepository.new.delete(params[:id])

      redirect_to '/items'
    end
  end
end
