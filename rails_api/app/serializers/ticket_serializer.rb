class TicketSerializer < ActiveModel::Serializer
  attributes :id, :title, :ticket_type, :status, :description
end
