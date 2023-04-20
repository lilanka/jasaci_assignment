// Edges
edge married;
edge child;
edge member;

// Nodes
node person {
    has id;
    has family_id;
    has name;
    has date_of_birth;
    has profession;
    has gender;
    has deceased;
    has parents;
    has children;
    has spouse;
    has hometown;

    has bus;


    can get_bus_to_hometown{
        if(hometown == "Gampaha"){
            bus = "Gampaha 200";
        }

        elif(hometown == "Moratuwa"){
            bus = "Moratuwa 100";
        }

        elif(hometown == "Kaluthara"){
            bus = "Kaluthara 400";
        }

        else{
           bus = "No Bus"; 
        }

    }
    
}
node family_root {
    has id;
    has family_name;
}

// Graphs
graph family_tree {
    has anchor family_root;
    spawn {
        family_root = spawn node::family_root;
    }
}