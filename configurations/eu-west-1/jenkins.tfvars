#below code is used to set backend only
s3_folder_region                =	    "eu-west-1"
s3_bucket                       =	    "t-s3-backend"
s3_folder_project               =   	"jenkins"
s3_folder_type                  =   	"eu-west-1/tools/tools"
s3_tfstate_file                 =   	"jenkins.tfstate"

#not needed
environment                     =   "tools"
#

region 			                = 	"eu-west-1"
vpc_id		    	            =	"vpc-2f332c49"
zone_id			                =	"ZLLTFA4ZO6PR5" 
domain			                =	"huseyinakten.net"
base_domain			            =	"huseyinakten.net"


instance_type		            =  	"t2.micro"
key_name	    	            =   "jenkins"
user		    	            =   "centos"
ssh_key_location	            =   "/root/.ssh/id_rsa"                                                  



