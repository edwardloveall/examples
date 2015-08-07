class UserRegistrar
  COLORS = ['red', 'orange', 'yellow', 'green', 'blue', 'violet'].freeze

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def self.perform(params)
    new(params).perform
  end

  def perform
    User.new(user_params)
  end

  private

  def user_params
    {
      color: random_color,
      email: params[:email]
    }
  end

  def random_color
    COLORS.sample
  end
end
