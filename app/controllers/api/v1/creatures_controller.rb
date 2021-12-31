class Api::V1::CreaturesController < ApiController
    def index
        creatures = Creature.all
        data = CreatureSerializer.new creatures
        json_response(data, :ok)
    end

    def show
        data = CreatureSerializer.new creature
        json_response(data, :ok)
    end

    private

    def creature
        @creature ||= Creature.find(params.dig(:id))
    end
end