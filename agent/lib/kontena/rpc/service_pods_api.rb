module Kontena
  module Rpc
    class ServicePodsApi

      # @param [String] service_id
      # @param [Integer] instance_number
      # @return [Hash]
      def restart(service_id, instance_number)
        Celluloid::Notifications.publish('service_pod:restart', {service_id: service_id, instance_number: instance_number})
        {}
      end

      def notify_update(reason)
        Celluloid::Notifications.publish('service_pod:update', reason)
        {}
      end
    end
  end
end
