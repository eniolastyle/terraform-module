vpc_cidr = "172.16.0.0/16"

vpc_tag = {
    "Name" = "dev-vpc"
}

subnet_cidr = "172.16.1.0/24"

subnet_tag = {
    "Name" : "dev_subnet"
}

sg_tag = {
    "Name" : "allow_tls"
}

instance_config = {

    instance_1 = {
        nic_tag = {"Name" = "dev_nic1"}
        private_ips = ["172.16.1.100"]
        instance_tag = {"Name" : "dev-server1"}
        instance_ami = "ami-068f27965379d536b"
        instance_type = "t2.micro"
    }

    instance_2 = {
        nic_tag = {"Name" = "dev_nic2"}
        private_ips = ["172.16.1.101"]
        instance_tag = {"Name" : "dev-server2"}
        instance_ami = "ami-068f27965379d536b"
        instance_type = "t2.micro"
    }
}