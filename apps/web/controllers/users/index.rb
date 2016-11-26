module Web::Controllers::Users
  class Index
    include Web::Action

    def call(params)
      UserRepository.new.to_a
    end
  end
end
