module Alauda
  module Api
    class Service
      API_URL = "https://api.alauda.cn/"

      def self.list(params)
        RestClient.get "#{API_URL}/v1/services/#{params[:namespace]}", {:Authorization => "Token #{Alauda.api_key}"}
      end
 


      #
      #     Name: 创建服务
      #
      #     "service_name": "test",
      #     "namespace": "madams",
      #     "application": "app_name_or_null",
      #     "image_name": "index.alauda.cn/alauda/ubuntu",
      #     "image_tag": "latest",
      #     "run_command": "",
      #     "instance_size": "XS",
      #     "scaling_mode": "MANUAL",
      #     "target_state": "STARTED",
      #     "custom_domain_name": "my-own-domain.cn",
      #     "target_num_instances": 2,
      #     "instance_envvars":{
      #         "POSTGRES_USER":"root",
      #         "POSTGRES_PASSWORD":"123456",
      #         "PG_HOST": "127.0.0.1",
      #         "PG_PORT": "5432",
      #         "REPO_NAME": "pypg2",
      #         "FILENAME": "scale_with_db"
      #     },
      #     "instance_ports":[
      #         {
      #             "container_port": 22,
      #             "protocol": "tcp",
      #             "endpoint_type": "tcp-endpoint"
      #         },
      #         {
      #             "container_port": 22,
      #             "protocol": "tcp",
      #             "endpoint_type": "direct-endpoint"
      #         }
      #     ],
      #     "autoscaling_config": {
      #         "metric_name" : "CPU_UTILIZATION",
      #         "metric_stat" : "MEAN",
      #         "upper_threshold" : "0.6",
      #         "lower_threshold" : "0.1",
      #         "decrease_delta" : "1",
      #         "increase_delta" : "1",
      #         "minimum_num_instances" : "1",
      #         "maximum_num_instances" : "6",
      #         "wait_period" : "30"
      #     },
      #     "volumes" : [
      #         {
      #             "app_volume_dir" : "/data1",
      #             "volume_type" : "EBS",
      #             "size_gb" : 10
      #         },
      #         {
      #             "app_volume_dir" : "/data2",
      #             "volume_type" : "EBS",
      #             "size_gb" : 20
      #         }
      #     ],
      #     "region_name": "SHANGHAI1"
      # }
      def self.create(parms)
        RestClient.post "#{API_URL}/v1/services/#{params[:namespace]}", {} ,{:Authorization => "Token #{Alauda.api_key}"}
      end

    end
  end
end