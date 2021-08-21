class Team
  # :suffix を追加
  attr_accessor :name, :win, :lose, :draw

  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win.to_f
    self.lose = lose.to_f
    self.draw = draw.to_f
  end

  def calc_win_rate
    return self.win/(self.win + self.lose) 
  end

  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win.to_i}勝 #{self.lose.to_i}敗 #{self.draw.to_i}分、勝率は #{calc_win_rate}です。"
  end
end

team_A = Team.new('Giants', '67', '45', '8')
team_B = Team.new('Tigers', '60', '53', '7')
team_C = Team.new('Dragons', '60', '55', '5')
team_D = Team.new('BayStars', '56', '58', '6')
team_E = Team.new('Carp', '52', '56', '12')
team_F = Team.new('Swallows', '41', '69', '10')

team_A.show_team_result()
team_B.show_team_result()
team_C.show_team_result()
team_D.show_team_result()
team_E.show_team_result()
team_F.show_team_result()