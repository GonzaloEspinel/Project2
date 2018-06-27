module.exports = function(sequelize, DataTypes) {
    var Customer = sequelize.define("Customer", {
           
           //first field
            id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false,
            unique: true,
            validate: { }
        },
           //second field
           customer_name:{
           type: DataTypes.CHAR,
           allowNull: false,
           unique: false,
           validate: {
                     len: {
                         args: 3,
                         msg: "Customer Name has to have alteast 3 Characters !"
                     }
                 }
        },
           //third field
           customer_email:{
            type: DataTypes.CHAR,
            allowNull: false,
            unique: true,
            validate: {
                      len: {
                          args: 3,
                          msg: "Customer Email has to have alteast 3 Characters !"
                      }
                  }
         },
          //fourth field 
           customer_phone:{
            type: DataTypes.INTEGER,
            allowNull: false,
            unique: true,
            validate: {
                      len: {
                          args: 10,
                          msg: "Customer Name has to have alteast 10 Characters !"
                      }
                  }
         },
         customer_address:{
            type: DataTypes.CHAR,
            allowNull: false,
            unique: false,
            validate: {
                      len: {
                          args: 5,
                          msg: "Customer Name has to have alteast 5 Characters !"
                      }
                  }
         },
         customer_loginid:{
            type: DataTypes.CHAR,
            allowNull: false,
            unique: true,
            validate: {
                      len: {
                          args: 5,
                          msg: "Customer Loginid has to have alteast 5 Characters !"
                      }
                  }
         },
         customer_password:{
            type: DataTypes.CHAR,
            allowNull: false,
            unique: true,
            validate: {
                      len: {
                          args: 5,
                          msg: "Customer Loginid has to have alteast 5 Characters !"
                      }
                  }
         }
    },{
        // Esto es para que mantenga el nombre de la tabla en singular
        freezeTableName: true,
    }

    );
    return Customer;
  };