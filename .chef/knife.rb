cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
data_bag_path    "data_bags"

knife[:berkshelf_path] = "cookbooks"
Chef::Config[:ssl_verify_mode] = :verify_peer if defined? ::Chef
