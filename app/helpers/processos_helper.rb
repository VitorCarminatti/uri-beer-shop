module ProcessosHelper
  def options_for_select
    Processo.statuses.keys.collect { |status| [t(status, scope: "activerecord.attributes.processo.statuses"), status] }
  end
end
