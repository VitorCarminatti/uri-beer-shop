module EngenhariasHelper
  def options_for_select
    Engenharia.statuses.keys.collect { |status| [t(status, scope: "activerecord.attributes.engenharia.statuses"), status] }
  end
end
