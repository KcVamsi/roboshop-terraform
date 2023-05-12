components = {
    frontend = {
      name = "frontend"
      instance_type = "t3.small"
    }
  
    mongodb = {
      name = "mongodb"
      instance_type = "t3.small"
    }
    
    catalogue = {
      name = "catalogue"
      instance_type = "t3.small"
    }
    redis = {
      name = "redis"
      instance_type = "t3.small"
    }
    user = {
      name = "user"
      instance_type = "t3.small"
    }
    cart = {
      name = "cart"
      instance_type = "t3.small"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.small"
      password = "Roboshop@1"
    }

    shipping = {
      name = "shipping"
      instance_type = "t3.small"
      password = "Roboshop@1"
    }

    rabbitmq = {
      name = "rabbitmq"
      instance_type = "t3.small"
      password = "Roboshop@123"
    }
    payment = {
      name = "payment"
      instance_type = "t3.small"
      password = "Roboshop@123"
    }
}

# now we need to declare the env and prod variables for that we create a vars.tf file

# rabbitmq, shipping, mysql, payment all these require password, but hardcoding is not good but we will cover that later

# we need provide this password as input

# ${each.value["password"]}

# but this will give error in the other components as they are not having the password. for  that we had an solution which is lookup where the function gives dummy instead of error

# ${lookup(each.value, "password", "null")}


